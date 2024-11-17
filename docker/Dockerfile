FROM python:3.10.15-bullseye

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc libgl1 \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

WORKDIR /opt
COPY requirements.txt /opt/requirements.txt
RUN pip3 install -r /opt/requirements.txt

RUN ldconfig
WORKDIR /app
