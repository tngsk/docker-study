FROM ubuntu:latest

RUN apt update -y && \
apt install -y tzdata && \
apt install -y \
build-essential \
bzip2 \
wget \
cmake \
git \
gcc \
make && apt clean

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/Miniconda.sh && \
/bin/bash ~/Miniconda.sh -b -p ~/miniconda3 && \
rm ~/Miniconda.sh && \
echo ". ~/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc && \
echo "conda activate base" >> ~/.bashrc

ENV PATH ~/miniconda3/bin:$PATH
SHELL ["/bin/bash", "-c"]
WORKDIR /home
