from sklearn.externals import joblib
import cv2
import operator
from imutils import face_utils
import dlib
import matplotlib.pyplot as plt
import math
import os
import numpy as np
#emotions = ["anger","happy", "neutral", "sadness"]  # Emotion list old

emotions = ["Happy","Sad"]  # Emotion list new


#load dat file
predictor = dlib.shape_predictor(r"C:\Users\Pinal\Desktop\project\expressionDetection\expressionDetection\shape_predictor_68_face_landmarks.dat")  # Or set this to whatever you named the downloaded file
detector = dlib.get_frontal_face_detector()

clahe = cv2.createCLAHE(clipLimit=1.0, tileGridSize=(8, 8))

data={}

def get_landmarks(image):
    detections = detector(image,1)
    (face_x, face_y, face_w, face_h)=(0,0,0,0)
    for k, d in enumerate(detections):  # For all detected face instances individually
        (face_x, face_y, face_w, face_h) = face_utils.rect_to_bb(d)

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

    return int(face_x),int(face_y),int(face_w),int(face_h)

prediction_data=[]
prediction_labels=[]

# path = '/home/dev1/Downloads/photos/mix/testing/'



def get_expression():

    cap = cv2.VideoCapture(0)

    videoOn = True
    while (videoOn):

        ret, image = cap.read()
        if (ret == False):
            break

        response={'Expression':''}

        #ima = cv2.resize(image, (48,48))
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

        clahe_image = clahe.apply(gray)

        #for item in emotions:
        x,y,w,h = get_landmarks(clahe_image)
        cv2.rectangle(image, (x, y), (x + w, y + h), (0, 255, 0), 3)

        if data['landmarks_vectorised'] == "error":
            print("no face detected on this one")
        else:
            prediction_data.append(data['landmarks_vectorised'])
            #prediction_labels.append(emotions.index(item))
        npar_pred = np.array(prediction_data)

        clf = joblib.load(r'C:\Users\Pinal\Desktop\project\expressionDetection\expressionDetection\All.pkl')
        #clf = joblib.load('/home/dev1/Akash/Code/Python_Workspace/TestCharm/ExpressionTrain/Myemo.pkl')
        # pred = clf.predict(npar_pred)
        pred = clf.predict_proba(npar_pred)
        # score = clf.score(npar_pred , prediction_labels)
        pred = pred.ravel()

        happy = [-1]
        sad = [-2]

        my_acc={}

        j = -2
        for i in range(-1, -3, -1):
            #print (abs(i))
            #print ("i=", i)
            my_acc[emotions[abs(i) - 1]] = float(pred[j])
            # print ("emotionAbs", emotions[abs(i) - 1])
            #print ("pred", pred[j])
            j = j + 1

        emotion = max(my_acc.items(), key=operator.itemgetter(1))[0]
        acc = round( max(my_acc.values()) * 100,2)

        response['Expression'] = max(my_acc.items(), key=operator.itemgetter(1))[0]

        # prediction_labels.append(emotion)
        cv2.putText(image,'{}'.format(emotion),(x-5,y-15), cv2.FONT_HERSHEY_SIMPLEX,2,(145,0,0),3)
       # print clf.predict(npar_pred)
        #print emotions[pred[cnt]]
        #print pred
        #im=cv2.cvtColor(image,cv2.COLOR_BGR2RGB)
        emotion = max(my_acc.items(), key=operator.itemgetter(1))[0]
        print ('Emotion:',emotion)
        cv2.imshow('Video',image)
        #plt.show()

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    cap.release()
    cv2.destroyAllWindows()

    return response

# img =  cv2.imread(r'F:\PycharmProjects\expressionDetection\cry.jpg')
# res = get_expression(img)
# print (res)


res = get_expression()
