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

# DockerHub
## Dockerhub Repo
Creating a DockerHub repo is easy enough. First create a DockerHub account, then select the "repositories" option in DockerHub. From here, select the blue "Create repository" button at the top of the page, then enter a name for the repo. After doing so, you can create the repo.
## Authenticate via CLI
Authenticating and logging into dockerhub from the command line can (surprisingly) be done with one easy command:

`docker login -u [USERNAME] -p [PASSWORD]`
## Push to Dockerhub
To push to DockerHub, first you'll need to log in using the command above. After loggin in, you'll first need to build your container image:

`docker build -t <your_username>/my-private-repo .`
> Make sure you're running this command in the same directory as your Dockerfile
After doing that, you can push to DockerHub:

`docker push [USERNAME]/[REPO NAME]`

# Github Actions
## Github Secrets
Github Secrets are encrypted environment variables that can be set per organization or per repository. They can be used in Github actions to help in automation. For example we'll be using secrets to store our login information to DockerHub so that actions can automate docker pushes.
To configure secrets, go to the settings of your repository and select "Secrets" under the "Security" option.
In the Secrets menu, click "New repository secret", and enter a name for the secret and the secret content itself. (In this case, I created two secrets for my docker username and password)
## Behavior of Github workflow

# Deployment
## Container Restart Script
## Server Webhook
## Webhook Task
## Notifier(s) in Git/Docker Hub