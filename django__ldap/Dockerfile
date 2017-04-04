FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /source
WORKDIR /source
ADD requirements.txt /source/
RUN apt-get update && apt-get install -y \
    libsasl2-dev \
    libldap2-dev \
    libssl-dev \
    python3-dev \
    libevent-dev \
 && rm -rf /var/lib/apt/lists/*
RUN pip install -r requirements.txt
ADD . /source/
