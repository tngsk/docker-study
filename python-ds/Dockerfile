FROM nagasakitomohiro/miniconda3:latest

RUN conda update conda && conda install numpy pandas matplotlib seaborn scikit-learn

RUN conda install notebook

SHELL ["/bin/bash", "-c"]
WORKDIR /home
