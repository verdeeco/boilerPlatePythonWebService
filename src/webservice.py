from flask import Flask
from flask import jsonify

import json
app = Flask(__name__)


# Expose the web service methods with an app.route. For instance this would just print the below message

@app.route('/')
def hello():
    response = 'Congratulations! You just ran your first python webservice Container'
    return response


@app.route('/test/<string:name>/<string:age>/<string:gender>/',  methods = ['GET'])
def printDetails(name, age, gender):
    response = 'Hello '+name+' you look really young for a '+age +' year old '+gender+'!';
    return response;


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')