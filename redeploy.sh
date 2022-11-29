#!bin/bash
docker pull yourpalsocks/ceg3120_final_project:latest
docker stop project_5_cont
docker system prune -f
docker run -d --name=project_5_cont yourpalsocks/ceg3120_final_project:latest