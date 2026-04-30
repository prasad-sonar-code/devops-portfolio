from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Prasad's DevOps Portfolio App</h1><p>Running in Docker on AWS!</p>"

@app.route("/health")
def health():
    return {"status": "healthy", "version": "1.0"}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
