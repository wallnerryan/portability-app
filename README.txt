Flask-App Docker Demo
===================

A Docker-Built App

==================

How to run
=================


(Pull from git repository)
=================
git pull http://github.com/wallnerryan/portability-app.git
cd portability-app
docker build .

=================
(In either case, the image will be represented with a UUID)
docker images

docker tag <imageUUID> demo/flaskwebapp

#run with no settings
docker run -rm -i -t -P —name FlaskApp demo/flaskwebapp

#run with settings
docker run —rm i -t —P -e TEXT=“On Host <X>” demo/flaskwebapp

# example
export HOSTNAME=<hostname>
docker run —rm i -t —P -e TEXT=$HOSTNAME demo/flaskwebapp

# See what port is exposed
docker ps (look at 0.0.0.0:<PORT?>->5000/tcp)
