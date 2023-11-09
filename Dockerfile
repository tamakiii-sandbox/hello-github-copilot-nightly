FROM node:18.16

RUN apt update && \
    apt install -y \
        libnss3 \
        libatk1.0-0 \
        libatk-bridge2.0-0 \
        libcups2 \
        libdrm-dev \
        libgtk-3-dev \
        libasound-dev \
        && \
    apt clean all