from chat import Chat
from flask import Flask, jsonify,request

app = Flask(__name__)


@app.route('/predict',methods = ['PUT','GET', 'POST', 'DELETE'])
def hello_world():
    if request.method == 'PUT':
        print(request.json)
        errorStatement = request.json["errorstat"]

        bot = Chat()
        ans = bot.chatbot_response(errorStatement)
        return jsonify(ans)

if __name__ == '__main__':
    app.run()
