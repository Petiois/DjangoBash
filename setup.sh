#!/bin/bash

sudo apt-get update
sudo apt-get install git
sudo apt-get install python

wget https://www.djangoproject.com/download/1.4.2/tarball/
mv index.html Django-1.4.2.tar.gz
tar xzvf Django-1.4.2.tar.gz
python Django-1.4.2/setup.py install
git clone https://github.com/Petiois/videoShare.git

python manage.py syncdb
python manage.py runserver

exit 0
