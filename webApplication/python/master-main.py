# -*- coding: utf-8 -*-
from flask import Flask, request, jsonify
from flask import render_template
import os
from flask_cors import CORS,cross_origin
import json

from flask_mysqldb import MySQL

from flask import Flask,session
import camera

UPLOAD_FOLDER = 'thumbnail_images'

app = Flask(__name__)
CORS(app)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'project'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
# init MYSQL
mysql = MySQL()
mysql.init_app(app)

ALLOWED_EXTENSIONS = set(['png', 'jpg', 'mp4', 'bmp'])


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


# pageCounter = {}
# homeC, facesC, facerC, imgC, soapC, expC, sumC, eidC, objC = (val * 0 for val in range(0, 9))
@app.after_request
def add_header(r):
    """
    Add headers to both force latest IE rendering engine or Chrome Frame,
    and also to cache the rendered page for 10 minutes.
    """
    r.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    r.headers["Pragma"] = "no-cache"
    r.headers["Expires"] = "0"
    r.headers['Cache-Control'] = 'public, max-age=0'
    return r


@app.route('/', methods=['GET'])
def static_page():

    return render_template("board_input.html")



@app.after_request
def add_header(r):
    r.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    r.headers["Pragma"] = "no-cache"
    r.headers["Expires"] = "0"
    r.headers['Cache-Control'] = 'public, max-age=0'
    return r


@app.route('/detect', methods=['GET'])
@cross_origin()
def helmet_detect():
    #upload_to = 'static/videos/'
    output = {}
    value = request.args.get('videoId')
    print (value)
    v=int(value)
    print (v)

    curs = mysql.connection.cursor()  # Execute
    curs.execute("select videoName from videoinfo where videoId=%s",[v])

    results = curs.fetchone()
    print(results)
    videoName=results['videoName']

    videoName
    #print (videoName)
# file_name = file_upload.filename
#file_upload.save(r'C:\Users\Pinal\Desktop\project\Expression_Students\static\videos\{}'.format())

    (video_out, image_path)=camera.start_app(r'E:/aj/CBA/WebContent/checkExpression/video/{}'.format(videoName))

    # n_boxes = predict._main_(upload_to + '/' + 'temp.jpg')
    #
    # output['Filename'] = file_name
    # output['Found No Of Helmet'] = n_boxes
    # print('Output Json', output)



    cur = mysql.connection.cursor()  # Execute
    cur.execute("INSERT INTO output(videoPath, imagePath,vv_videoId) VALUES(%s, %s, %s)",
                (video_out,image_path,v))

    # Commit to DB
    mysql.connection.commit()

    # Close connection
    cur.close()
    #print (video_out, image_path)
    data={
        'video_path':video_out,
        'image_path':image_path
    }

    return  jsonify(data)






if __name__ == '__main__':
    app.run(debug=True, port=5011)
