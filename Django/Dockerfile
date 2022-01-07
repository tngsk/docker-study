# builder
FROM python:3.9-buster AS builder

WORKDIR /home

RUN apt update -y && apt install -y tzdata && apt install -y build-essential  wget git gcc && apt clean

COPY requirements.txt ${PWD}
RUN pip install -r requirements.txt

# runner
# FROM python:3.9-slim-buster AS runner

# COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
# COPY --from=builder /usr/local/share /usr/local/share 

RUN apt-get update && apt-get install -y locales && locale-gen ja_JP.UTF-8 && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

RUN apt update -y && apt install -y tzdata && apt install -y libpq5 libxml2
RUN apt install -y nodejs npm
RUN apt clean

ADD . /home/

EXPOSE 5050
CMD ["bash"]