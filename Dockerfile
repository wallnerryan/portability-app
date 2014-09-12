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

# Add environment variable default
ENV TEXT "World"

# Expose the port the Flask Web App uses
EXPOSE 5000

# Run the app
CMD ["python","/opt/app/app.py"]

