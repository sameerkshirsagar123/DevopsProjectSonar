#!/usr/bin/bash 

# sed -i 's/\[]/\["3.84.7.210"]/' /home/ubuntu/ci-cd-django/main/settings.py
sudo systemctl restart gunicorn
sudo systemctl restart nginx
# run server
# cd /home/ec2-user/environment/cicd
# sudo chgrp ec2-user *
# sudo chgrp ec2-user .
# sudo chown ec2-user .
# sudo chown ec2-user *
# python3 -m venv venv
# source venv/bin/activate
# export LD_LIBRARY_PATH=/usr/local/lib
# gunicorn --bind 0.0.0.0:8000 hospitalmanagement.wsgi&