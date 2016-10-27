##########################################################################
# Dockerfile for https://github.com/numberly/mattermost-integration-giphy
# Based on Ubuntu
##########################################################################

# Set the base image to Ubuntu
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER AEtherC0r3

########################### BEGIN INSTALLATION ###########################

# Update repositories and install dependencies
RUN apt update
RUN apt install -y git python2.7 python-pip python-dev build-essential

# Clone the repository and install
RUN git clone https://github.com/numberly/mattermost-integration-giphy.git
WORKDIR mattermost-integration-giphy
RUN python setup.py install

# Set environment variables
ENV MATTERMOST_GIPHY_TOKEN=<your-token-here>
ENV MATTERMOST_GIPHY_HOST=0.0.0.0
ENV MATTERMOST_GIPHY_PORT=5000
ENV GIPHY_API_KEY=<your-api-key-here>

########################### INSTALLATION END #############################

EXPOSE $MATTERMOST_GIPHY_PORT
CMD python run.py

