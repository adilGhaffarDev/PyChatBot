# Project description

Python chat bot that takes code satements as input and give informative feedback on compilation errors using artificial intelligent trained model.

# create virtual environment

python3 -m venv venv

# activate

source venv/bin/activate

# install requirements

pip3 install -r requirements.txt

# run docker conatainer of tensorflow serving

docker run -p 5500:8501 --mount type=bind,source=/Users/adilghaffar/Documents/UEF/Thesis/ChatBot/pyCode/msg_classifier,target=/models/msg_classifier -e MODEL_NAME=msg_classifier -t tensorflow/serving

# run the flask server

python3 app.py
