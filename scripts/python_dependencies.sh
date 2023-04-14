#!/usr/bin/env bash
cd /home/ec2-user/environment/cicd
sudo chgrp ec2-user *
sudo chgrp ec2-user .
sudo chown ec2-user .
sudo chown ec2-user *

# activate virtual environment
python3 -m venv venv
source venv/bin/activate
# install requirement.txt
pip install -r /home/ec2-user/environment/cicd/requirements.txt

export LD_LIBRARY_PATH=/usr/local/lib
python3 manage.py makemigrations
python3 manage.py migrate