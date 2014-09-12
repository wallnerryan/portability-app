Flask-App
===================

A Docker-Built App

==================

How to run
=================

OPTION #1 (Pull from Repository)
=================
# Show portability between docker.
docker pull sclr097.lss.emc.com:5000/emccto/flaskwebapp

OPTION #2 (Pull from git repository)
=================
git pull https://git.lss.emc.com/scm/trnglm/portability-app.git
cd portability-app
docker build .

=================
(In either case, the image will be represented with a UUID)
docker images

docker tag <imageUUID> emccto/flaskwebapp

#run with no settings
docker run -rm -i -t -P —name FlaskApp emccto/flaskwebapp

#run with settings
docker run —rm i -t —P -e TEXT=“On Host <X>” emccto/flaskwebapp

# example
export HOSTNAME=<hostname>
docker run —rm i -t —P -e TEXT=$HOSTNAME emccto/flaskwebapp

# See what port is exposed
docker ps (look at 0.0.0.0:<PORT?>->5000/tcp)

