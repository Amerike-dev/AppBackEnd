import os
import json

from flask import Flask
from flask import jsonify

from . import db
from . import auth_user


def create_app(test_config=None):

    app = Flask(__name__)
    env_config = os.getenv("APP_SETTINGS", "config.DevelopmentConfig")
    app.config.from_object(env_config)

    @app.route('/')
    def hello():
        secret_key = app.config.get("SECRET_KEY")
        return f'Hello world: {secret_key}'

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

    @app.route('/api/v1/auth/user')
    def auth():
        response = auth_user.validate()
        return response

    @app.route('/api/v1/calendar')
    def calendar():
        response = {"test": "foo"}
        return response

    @app.route('/api/post/test')
    def post_test():
        return "Post Method test"
    
    return app