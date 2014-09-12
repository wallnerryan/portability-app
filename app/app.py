from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    text = os.environ['TEXT']
    return "Hello %s!" % text

if __name__ == "__main__":
    app.run()
