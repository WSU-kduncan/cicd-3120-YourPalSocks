# Project Overview:
This final project for CEG 3120 is to build containers that act as version control for a whole machine rather than just one project. Say a whole team is hired at a company to work on a website and will all need new computers to start working. Rather than wasting the new hires' time downloading and installing everything, they can have their computer's image set to a docker image to quickly become productive.

[DIAGRAM GOES HERE]

# Run Project Locally
## Installing Docker
I run Ubuntu (jammy) on my PC, so installed it according to [these steps](https://docs.docker.com/engine/install/ubuntu/). That included installing these packages found on Docker's website in this order:
- containerd.io_latest_amd64.deb
- docker-ce-cli_latest_amd64.deb
- docker-compose-plugin_latest_amd64.deb
- docker-ce_latest_amd64.deb

After downloading and installing those packages, run this command to test if Docker installed successfully:
`sudo docker run hello-world`
## Build the Container
