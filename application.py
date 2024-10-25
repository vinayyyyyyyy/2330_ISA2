# app.py
from flask import flask

app = Flask(__name__)

@app.route("/")
def hello_world():
  return "Hello, I'm 2330!"
