#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
# It can run in the background of terminal unlike a node server.
sudo npm install -g pm2
# stop any instance of our application currently running
pm2 stop practiceApp
# change directory into folder where application is downloaded
cd practice/
# Install dependencies listed inside /package.json file
npm install
# Start the application with the process name practiceApp using pm2
pm2 start ./bin/www --name practiceApp