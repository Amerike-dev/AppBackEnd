import os
import json

from flask import Flask
from flask import jsonify

from . import db


def create_app(test_config=None):

    app = Flask(__name__, instance_relative_config=True)

    @app.route('/')
    def hello():
        return 'Hello world'

    @app.route('/db')
    def db_tables():
        names = db.get_names()
        response = json.dumps(names)
        return jsonify(response)

    @app.route('/api/v1/assets')
    def get_assets():
        assets = db.get_assets()
        response = json.dumps(assets)
        return jsonify(response)

    return app