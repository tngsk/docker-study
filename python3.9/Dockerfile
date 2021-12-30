# builder

FROM python:3.9-buster AS builder

WORKDIR /home

RUN apt update -y && apt install -y tzdata && apt install -y build-essential bzip2 wget xz-utils cmake git gcc make && apt clean

RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz && tar Jxvf ./ffmpeg-release-amd64-static.tar.xz && cp ./ffmpeg-4.4.1-amd64-static/ffmpeg /usr/local/bin/

COPY requirements.txt ${PWD}
RUN pip install -r requirements.txt

# runner

FROM python:3.9-slim-buster AS runner

COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=builder /usr/local/share /usr/local/share 
COPY --from=builder /usr/local/bin/ffmpeg /usr/local/bin/

RUN apt-get update && apt-get install -y locales && locale-gen ja_JP.UTF-8 && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

RUN apt update -y && apt install -y tzdata && apt install -y libpq5 libxml2
RUN apt install -y nodejs npm
RUN apt clean

EXPOSE 5050
CMD ["bash"]
