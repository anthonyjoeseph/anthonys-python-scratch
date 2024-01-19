# taken from
# https://github.com/amineHY/tuto-python-anaconda-docker
FROM continuumio/miniconda3

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . $APP_HOME

# Prepare the environnement
RUN conda create -y --name chain-etl python=3.9
RUN conda run --name chain-etl pip install -r requirements.txt 
SHELL ["conda", "run", "--name", "chain-etl", "/bin/bash", "-c"]

ENTRYPOINT ["conda", "run", "--name", "chain-etl", "python", "src/main.py"]