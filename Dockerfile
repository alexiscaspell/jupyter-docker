FROM jupyterhub/jupyterhub

RUN mkdir /home/custom_user

WORKDIR /etc/jupyterhub

RUN apt-get update && apt-get install virtualenv -y

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# RUN git clone https://github.com/jupyterhub/nativeauthenticator.git
# RUN pip install -e .

RUN jupyterhub --generate-config

CMD jupyterhub -f jupyterhub_config.py

