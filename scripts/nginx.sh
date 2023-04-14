#!/usr/bin/bash

sudo systemctl daemon-reload
sudo systemctl restart gunicorn
sudo cp nginx/app.conf /etc/nginx/conf.d/app.conf
sudo nginx -t
sudo systemctl restart nginx
