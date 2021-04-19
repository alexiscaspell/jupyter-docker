# VARIABLES
IMAGE_NAME=jupyter-docker_jupyter-hub
IMAGE_TAG=latest


# SCRIPT
printf "\n\nBUILD"
printf "\n---------------------------------------------\n"
docker build . -t $IMAGE_NAME:$IMAGE_TAG


printf "\n\nRUN"
printf "\n---------------------------------------------\n"
docker run -it \
    -p 8000:8000 \
    -v $(pwd)/volumes/jupyterhub/config/jupyterhub_config_custom.py:/etc/jupyterhub/jupyterhub_config.py \
    -v $(pwd)/requirements.txt:/etc/jupyterhub/requirements.txt \
    -v $(pwd)/volumes/jupyterhub:/etc/jupyterhub/home \
    $IMAGE_NAME:$IMAGE_TAG

