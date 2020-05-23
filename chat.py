#!/usr/bin/python3
import requests
import nltk
import pickle
import numpy as np
import json
import random

API_URL = "http://localhost:5500/v1/models/msg_classifier/versions/1:predict"

class Chat:
    def __init__(self):
        self.intents = json.loads(open('intents.json').read())
        self.words = pickle.load(open('words.pkl','rb'))
        self.classes = pickle.load(open('classes.pkl','rb'))

    def _clean_up_sentence(self, sentence):
        sentence_words = nltk.word_tokenize(sentence)
        return sentence_words

    def _bow(self, sentence, words, show_details=True):
        # tokenize the pattern
        sentence_words = self._clean_up_sentence(sentence)
        # bag of words - matrix of N words, vocabulary matrix
        bag = [0]*len(words)
        for s in sentence_words:
            for i,w in enumerate(self.words):
                if w == s:
                    # assign 1 if current word is in the vocabulary position
                    bag[i] = 1
                    if show_details:
                        print ("found in bag: %s" % w)
        return(np.array(bag))

    def _predict_class(self, sentence):
        # filter out predictions below a threshold
        p = self._bow(sentence, self.words,show_details=False)
        arr = np.array([p])
        inputdata = json.dumps({
        'instances': arr.tolist()
        })
        inputdata=inputdata.encode('utf-8')
        r = requests.post(API_URL, data = inputdata)
        pred = json.loads(r.content.decode('utf-8'))
        ERROR_THRESHOLD = 0.25
        results = [[i,r] for i,r in enumerate(pred['predictions'][0]) if r>ERROR_THRESHOLD]
        # sort by strength of probability
        results.sort(key=lambda x: x[1], reverse=True)
        return_list = []
        for r in results:
            return_list.append({"intent": self.classes[r[0]], "probability": str(r[1])})
        print(return_list)
        return return_list

    def _getResponse(self, ints, intents_json):
        tag = ints[0]['intent']
        list_of_intents = intents_json['intents']
        for i in list_of_intents:
            if(i['tag']== tag):
                result = random.choice(i['responses'])
                break
        return result

    def chatbot_response(self, msg):
        ints = self._predict_class(msg)
        res = self._getResponse(ints, self.intents)
        return res
