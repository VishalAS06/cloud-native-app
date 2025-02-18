from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify(message="Hello from Cloud-Native App on AWS with Kubernetes!")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
