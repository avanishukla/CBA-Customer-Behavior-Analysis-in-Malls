from sklearn.svm import SVC
import cv2
import glob
import random
import math
import numpy as np
import dlib
import itertools
import os
from PIL import Image
from sklearn.externals import joblib

emotions = ["happy","sadness"]  # Emotion list
#emotions = ["disgust", "happy", "sad","surprise"]  # Emotion list

clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
detector = dlib.get_frontal_face_detector()
predictor = dlib.shape_predictor("shape_predictor_68_face_landmarks.dat")
clf = SVC(kernel='linear', probability=True,
          tol=1e-3)  # , verbose = True) #Set the classifier as a support vector machines with polynomial kernel

data = {}  # Make dictionary for all values


def get_files(emotion):  # Define function to get file list, randomly shuffle it and split 80/20
    files = glob.glob("dataset/%s/*" % emotion)
    print ('Dataset Load',len(files))
    random.shuffle(files)
    training = files[:int(len(files) * 0.8)]  # get first 80% of file list
    prediction = files[-int(len(files) * 0.2):]  # get last 20% of file list
    return training, prediction


def get_landmarks(image):
    detections = detector(image,1)
    for k, d in enumerate(detections):  # For all detected face instances individually
        shape = predictor(image, d)  # Draw Facial Landmarks with the predictor class
        xlist = []
        ylist = []
        for i in range(1, 68):  # Store X and Y coordinates in two lists
            xlist.append(float(shape.part(i).x))
            ylist.append(float(shape.part(i).y))

        xmean = np.mean(xlist)
        ymean = np.mean(ylist)
        xcentral = [(x - xmean) for x in xlist]
        ycentral = [(y - ymean) for y in ylist]

        landmarks_vectorised = []
        for x, y, w, z in zip(xcentral, ycentral, xlist, ylist):
            landmarks_vectorised.append(w)
            landmarks_vectorised.append(z)
            meannp = np.asarray((ymean, xmean))
            coornp = np.asarray((z, w))
            dist = np.linalg.norm(coornp - meannp)
            landmarks_vectorised.append(dist)
            landmarks_vectorised.append(int(math.atan((y - ymean) / (x - xmean)) * 360 / math.pi))

        #print 'Landmark_Vectorised:>',landmarks_vectorised

        data['landmarks_vectorised'] = landmarks_vectorised
    if len(detections) < 1:
        data['landmarks_vestorised'] = "error"


def make_sets():
    training_data = []
    training_labels = []
    prediction_data = []
    prediction_labels = []
    for emotion in emotions:
        print(" working on %s" % emotion)

        training, prediction = get_files(emotion)
        # Append data to training and prediction list, and generate labels 0-7
        print ('Traning Data Lenth',len(training))
        for item in training:
           # print '---------Item----------'+item
            image = cv2.imread(item)  # open image

            gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
            clahe_image = clahe.apply(gray)
            #print 'clahe Image',clahe_image
            get_landmarks(clahe_image)
            if data['landmarks_vectorised'] == "error":
                print("no face detected on this one")
            else:
                training_data.append(data['landmarks_vectorised'])  # append image array to training data list
                training_labels.append(emotions.index(emotion))

        for item in prediction:
            image = cv2.imread(item)
            #print image
            gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
            clahe_image = clahe.apply(clahe_image)
            get_landmarks(clahe_image)
            if data['landmarks_vectorised'] == "error":
                print("no face detected on this one")
            else:
                prediction_data.append(data['landmarks_vectorised'])
                prediction_labels.append(emotions.index(emotion))

    return training_data, training_labels, prediction_data, prediction_labels


accur_lin = []
for i in range(0, 5):
    print("Making sets %s" % i)  # Make sets by random sampling 80/20%
    training_data, training_labels, prediction_data, prediction_labels = make_sets()

    npar_train = np.array(training_data)  # Turn the training set into a numpy array for the classifier
    npar_trainlabs = np.array(training_labels)
    print("training SVM linear %s" % i)  # train SVM
    clf.fit(npar_train, training_labels)

    clf.predict(npar_train)

    print("getting accuracies %s" % i)  # Use score() function to get accuracy

    npar_pred = np.array(prediction_data)

    jb =joblib.dump(clf, 'DlibExpress.pkl')


    #print '===================',emotions[(prediction_labels)[0]]
    pred_lin = clf.score(npar_pred, prediction_labels)

    print ("linear: ", pred_lin)
    accur_lin.append(pred_lin)  # Store accuracy in a list

jb =joblib.dump(clf, 'expressionTest.pkl')
print("Mean value lin svm: %s" % np.mean(accur_lin))  # FGet mean accuracy of the 10 runs

