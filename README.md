# Project Overview:
This final project for CEG 3120 is to build containers that act as version control for a whole machine rather than just one project. Say a whole team is hired at a company to work on a website and will all need new computers to start working. Rather than wasting the new hires' time downloading and installing everything, they can have their computer's image set to a docker image to quickly become productive.

[DIAGRAM GOES HERE]

# Run Project Locally
## Installing Docker
I run Ubuntu (jammy) on my PC, so installed Docker according to [these steps](https://docs.docker.com/engine/install/ubuntu/). That included installing these packages found on Docker's website in this order:
- containerd.io_latest_amd64.deb
- docker-ce-cli_latest_amd64.deb
- docker-compose-plugin_latest_amd64.deb
- docker-ce_latest_amd64.deb

After downloading and installing those packages, run this command to test if Docker installed successfully:
`docker run hello-world`

## Build the Container
To build the docker container (using Apache2), we'll download the official httpd docker image with this command:

`docker pull httpd`
> NOTE: If you're not logged in as the super user, add 'sudo' to the beginning of each of these commands.

Then we can run this command to create the new container:

`docker run -d --name [CONTAINER NAME] -p 80:80 -d httpd`
> DEV NOTE: I'll use the name 'project_5_cont'

The container will have whatever name is put after the '--name' parameter and will tie port 80 of the host machine to port 80 of the docker container.
If you're successful, you should see this page when connecting to the page through your web browser (via [PRIVATE IP]:80):
![It Works Page](doc_images/ItWorks.png)
Not doxxing myself lol

# DockerHub
## Dockerhub Repo
## Authenticate via CLI
## Push to Dockerhub

# Github Actions
## Github Secrets
## Behavior of Github workflow

# Deployment
## Container Restart Script
## Server Webhook
## Webhook Task
## Notifier(s) in Git/Docker Hub