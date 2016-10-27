# Dockerfile for the [Giphy Integration Service for Mattermost](https://github.com/numberly/mattermost-integration-giphy)

## How to deploy

* Follow the 2nd or 3rd step from the [installation guide](https://github.com/numberly/mattermost-integration-giphy/blob/master/README.md#linuxubuntu-1404-web-server-install)
* Insert the appropriate values for the ENV variables in the Dockerfile
* Build the image `docker build -t mattermost-integration-giphy .`
* Run the container `docker run --name giphy-search --restart=always -p 5000:5000 -d mattermost-integration-giphy`

