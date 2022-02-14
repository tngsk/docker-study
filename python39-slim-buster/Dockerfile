# builder

FROM python:3.9-buster AS builder

#RUN apt update -y && apt install -y tzdata && apt install -y build-essential bzip2 wget xz-utils cmake git gcc make && apt clean
RUN apt update -y && apt install -y wget && apt clean

RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz && tar Jxvf ./ffmpeg-release-amd64-static.tar.xz && cp ./ffmpeg-4.4.1-amd64-static/ffmpeg /usr/local/bin/

COPY requirements.txt ${PWD}
RUN pip install -r requirements.txt

# runner

FROM python:3.9-slim-buster AS runner

# Python Modules
COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
# Jupyter Lab
COPY --from=builder /usr/local/share /usr/local/share 
# ffmpeg
COPY --from=builder /usr/local/bin/ffmpeg /usr/local/bin/

# Japanese
RUN apt-get update && apt-get install -y locales
RUN locale-gen ja_JP.UTF-8

# apt
RUN apt update -y && apt install -y libpq5 libxml2
RUN apt install -y nodejs npm
RUN apt clean

RUN adduser -q --gecos "" --disabled-login penguin
USER penguin

WORKDIR /home/penguin
RUN echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
EXPOSE 5050
CMD ["bash"]

