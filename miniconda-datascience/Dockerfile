# FROM nagasakitomohiro/miniconda3:latest
FROM ubuntu:latest

RUN apt update -y && apt install -y tzdata && apt install -y build-essential wget && apt clean

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/Miniconda.sh && \
/bin/bash ~/Miniconda.sh -b -p ~/miniconda3 && \
rm ~/Miniconda.sh && \
echo ". ~/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc && \
echo "conda activate base" >> ~/.bashrc

ENV PATH ~/miniconda3/bin:$PATH

SHELL ["/bin/bash", "-c"]
WORKDIR /home

RUN conda update conda && conda install numpy pandas matplotlib seaborn scikit-learn
RUN conda install plotly notebook

