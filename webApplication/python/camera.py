import cv2
from model import predict_emotion
import numpy as np
import matplotlib.pyplot as plt
import os

# video_path=0
# rgb = cv2.VideoCapture(video_path)
facec = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
font = cv2.FONT_HERSHEY_SIMPLEX

# AGE CATEGORIES: Adult(0), Child(1), Old(2), Youth(3)
# EMOTION CATEGORIES: Angry(0), Disgust(1), Fear(2), Happy(3), Sad(4), Suprise(5), Neutral(6)

def start_app(path):
    data = []
    n_frame = 0
    no_emo_det = 0

    if (path != 0):
        video_path = path
        cap = path
    else:
        video_path = 'camera_capture.mp4'
        cap = 0
    rgb = cv2.VideoCapture(cap)
    facec = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
    font = cv2.FONT_HERSHEY_COMPLEX

    frame_h = int(rgb.get(cv2.CAP_PROP_FRAME_HEIGHT))
    frame_w = int(rgb.get(cv2.CAP_PROP_FRAME_WIDTH))

    video_out = video_path[:-4] + '_detected' + '.webm'

    video_writer = cv2.VideoWriter(video_out, cv2.VideoWriter_fourcc(*'VP80'), 5.0, (frame_w, frame_h))
    while True:
        n_frame += 1

        ret, fr = rgb.read()

        if (ret == False):
            print("ret")
            break

        gray = cv2.cvtColor(fr, cv2.COLOR_BGR2GRAY)
        faces = facec.detectMultiScale(gray, 1.3, 5)
        faces, fr, gray_fr = faces, fr, gray

        if len(faces) == 0:
            no_emo_det += 1
            print ("faces")
        else:
            frame = []

            for (x, y, w, h) in faces:
                fc_emo = gray_fr[y:y + h, x:x + w]
                fc_age = fr[y:y + h, x:x + w]
                fc_gender = fr[y:y + h, x:x + w]

                # print(fc)
                roi_emo = cv2.resize(fc_emo, (48, 48))
                roi_age = cv2.resize(fc_age, (128, 128))
                roi_gender = cv2.resize(fc_gender, (128, 128))

                # predictions code
                pred_emo, emo_index = predict_emotion(roi_emo[np.newaxis, :, :, np.newaxis])

                frame.append(emo_index)

                # cv2 writing code
                cv2.putText(fr, pred_emo, (x, y), font, 1, (255, 255, 0), 2)

                cv2.rectangle(fr, (x, y), (x + w, y + h), (255, 0, 0), 2)
            data.append(frame)
        print (n_frame)

        if cv2.waitKey(1) == 27:
            break
        cv2.imshow('Filter', fr)
        video_writer.write(np.uint8(fr))

    cv2.destroyAllWindows()
    rgb.release()
    video_writer.release()

    # ANALYSIS AND PLOTTING SECTION
    # emotion counting and other statistics
    # creating counts of emotion
    emotion = [0, 0, 0, 0, 0, 0, 0]
    for frame in data:
       for box in frame:
            emotion[box] += 1
    print (emotion)
    '''
    no_emo_det = no_emo_det / n_frame * 100
    print (no_emo_det)

    emotion = [(x / n_frame) * 100 for x in emotion]
    #emotion = emotion + [no_emo_det]
    

    print("emotion",emotion)
    '''
    detected=0
    for i in emotion:
        detected+=i
    print (detected)
    final_result=[]
    for i in range(0,len(emotion)):
        #print(len(emotion))
        final_result.append((emotion[i]/detected)*100)


    print (final_result)

    '''
    emo_tup = ('Angry', 'Disgust', 'Fear', 'Happy', 'Sad', 'Suprise', 'Neutral', 'None')
    y_pos = np.arange(len(emo_tup))

    colors = ['red', 'green', 'black', 'yellow', 'magenta', 'orange', 'cyan', 'brown']

    # female_colors=['#D35E60','#84BA5B','#808585','#DD974C','#9067A7','#CCC210','#7293CB','#AB6857']
    # male_colors=['#CC2529','#3E9651','#535154','#DA7C30','#6B4C9A','#948B3D','#396AB1','#922428']

    # rects1_m=plt.bar(y_pos,emotion,width=0.18,color=male_colors,align='edge',edgecolor='none')

    # plt.legend((rects1_m[0],rects1_m[1],rects1_m[2],rects1_m[3],rects1_m[4],rects1_m[5],rects1_m[6],rects1_m[7]),emo_tup,loc='best')
    # plt.grid()
    # ax=plt.gca()
    # ax.set_ylim([0,100])
    # ax.set_facecolor('#e5e7ea')
    # plt.xlabel('Emotions')
    # plt.ylabel('Frame Percentage')
    # plt.title('Video Analysis Graph')
    # autolabel(rects1_f,rects1_m,'A')
    # autolabel(rects2_f,rects2_m,'C')
    # autolabel(rects3_f,rects3_m,'O')
    # autolabel(rects4_f,rects4_m,'Y')

    a = video_path.split('/')[-1].split('.')[0]
    print ("a=",a)
    video_output=r'checkExpression/video/{}_detcted.mp4'.format(a)
    image_path=r'checkExpression/image/{}_video_graph.jpg'.format(a)
    #print (image_path)
    ax = plt.gca()
    ax.set_ylim([0, 100])
    plt.bar(y_pos, emotion, color=colors)
    plt.xticks(y_pos, emo_tup)
    plt.xlabel('Emotions')
    plt.ylabel('Frame Percentage')
    plt.title('Video Analysis Graph')
    plt.savefig(r'E:/aj//CBA//WebContent//checkExpression//image//{}_video_graph.jpg'.format(a))
    #plt.show()

    plt.gcf().clear()
    return (video_output, image_path)
    '''
    emo_tup = ('Angry', 'Disgust', 'Fear', 'Happy', 'Sad', 'Suprise', 'Neutral')
    y_pos = np.arange(len(emo_tup))

    colors = ['red', 'green', 'black', 'yellow', 'magenta', 'orange', 'cyan']

    a = video_path.split('/')[-1].split('.')[0]
    print ("a=",a)
    video_output=r'checkExpression/video/{}_detected.webm'.format(a)
    image_path=r'checkExpression/image/{}_video_graph.jpg'.format(a)
    #print (image_path)
    ax = plt.gca()
    ax.set_ylim([0, 100])
    plt.bar(y_pos, final_result, color=colors)
    plt.xticks(y_pos, emo_tup)
    plt.xlabel('Emotions')
    plt.ylabel('Frame Percentage')
    plt.title('Video Analysis Graph')
    plt.savefig(r'E:/aj//CBA//WebContent//checkExpression//image//{}_video_graph.jpg'.format(a))
    #plt.show()

    plt.gcf().clear()
    return (video_output, image_path)