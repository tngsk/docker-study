# FROM nagasakitomohiro/miniconda3:latest
FROM ubuntu:latest

RUN apt update -y && apt install -y wget && apt clean

RUN adduser -q --gecos "" --disabled-login penguin
USER penguin
WORKDIR $HOME

# RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ./Miniconda.sh
# RUN /bin/bash ./Miniconda.sh -b -p miniconda3
# RUN rm Miniconda.sh
# RUN echo ". miniconda3/etc/profile.d/conda.sh" >> .bashrc
# RUN echo "conda activate base" >> .bashrc

# ENV PATH miniconda3/bin:$PATH
# SHELL ["/bin/bash", "-c"]

# RUN conda update conda && conda install numpy pandas matplotlib seaborn scikit-learn
# RUN conda install plotly notebook

# ENTRYPOINT ["/home"]