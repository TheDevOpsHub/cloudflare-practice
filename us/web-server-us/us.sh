#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
echo "Welcome to the US infrastructure!" | sudo tee /var/www/html/index.html
sudo systemctl start nginx
sudo systemctl enable nginx
