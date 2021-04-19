FROM jupyterhub/jupyterhub

WORKDIR /etc/jupyterhub

RUN mkdir home

# RUN apt-get update && apt-get install virtualenv -y

# RUN mkdir -p ~/.jupyterlab/user-settings/@jupyterlab/apputils-extension/ && \
#     echo '{ "theme":"JupyterLab Dark" }' > themes.jupyterlab-settings

RUN jupyterhub --generate-config

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt --upgrade pip

CMD jupyterhub -f jupyterhub_config.py

