from chat import Chat
from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/predict', methods=['POST'])
def hello_world():
    errorStatement = request.args.get('errorstat') #if key doesn't exist, returns None

    bot = Chat()
    ans = bot.chatbot_response(errorStatement)
    return jsonify(ans)

if __name__ == '__main__':
    app.run()
