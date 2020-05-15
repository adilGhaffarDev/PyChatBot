from chat import Chat
from flask import Flask

app = Flask(__name__)


@app.route('/inquiry')
def hello_world():
    bot = Chat()
    print(bot.chatbot_response('hello'))
    return 'Hello, World!'

if __name__ == '__main__':
    app.run()
