from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello_world():
    app.logger.info("Hey")
    return '{test: 1}'