#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/Raptorex65/aws-capstone-project.git
cd /home/ubuntu/aws-capstone-project
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/aws-capstone-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80