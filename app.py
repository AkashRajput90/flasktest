import pytest
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=5000)

    tester = app.test_client()
    response = tester.get('/')
    assert response.status_code == 200
    assert response.data == b'Hello, World!'

