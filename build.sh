#!/usr/bin/env bash
# exit on error
set -o errexit

pip3 install -r requirements.txt
pip3 install git+https://github.com/Music-and-Culture-Technology-Lab/omnizart
pip3 install typing_extensions --upgrade
omnizart download-checkpoints

python3 manage.py migrate

pip3 install gunicorn
