# A Simple Flask Web App

FROM ubuntu:13.10
MAINTAINER Ryan Wallner <ryan.wallner@emc.com>

# Package Management
RUN apt-get -y --fix-missing update
RUN apt-get -y install python python-pip
RUN pip install flask

# Add application to container image
ADD app /opt/app
ADD app/app.py /opt/app/app.py
ADD app/start.sh /opt/app/start.sh
RUN ["chmod", "+x", "/opt/app/start.sh"]

# Add environment variable default
ENV TEXT "World"

# Expose the port the Flask Web App uses
EXPOSE 5000

# Run the app
CMD ["/opt/app/start.sh"]

