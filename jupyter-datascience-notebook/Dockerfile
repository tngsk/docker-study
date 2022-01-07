# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html

FROM jupyter/datascience-notebook:latest
WORKDIR /home
# jupyter lab & plotly
RUN conda install -c anaconda -y nodejs && conda install -c conda-forge -c plotly jupyter-dash && jupyter lab build
