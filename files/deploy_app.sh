#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

sudo apt -y update
sudo apt -y install apache2 cowsay
sudo systemctl start apache2
sudo chown -R ubuntu:ubuntu /var/www/html

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Howl!!!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${placeholder}/${width}/${height}"></img></center>
  <center><h2>Diamond Dogs Strike again!!!!</h2></center>
  <center><h2>Version 6!</h2></center>
  <center><h2>Welcome to ${project}'s app.</h2></center>
  <!-- END -->

  </div>
  </body>
</html>
EOM

cowsay Diamond Dogs - Howl!!!