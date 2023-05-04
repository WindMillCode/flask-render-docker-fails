#!/bin/sh
cd /root/FlaskApp
pip install -r requirements.txt
gunicorn app:app
