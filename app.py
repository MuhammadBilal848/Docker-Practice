from flask import Flask
import os

app = Flask(__name__)

@app.route('/',methods = ['GET'])
def home():
    return '<h1>Hello World!!!!</h1>'


if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0',port=5000) 

# 0.0.0.0 is a private host, when you run this code, your pc will ask you to give access to python of your
# private ip address