FROM agilesyndrome/syndromeos:latest

ARG pythonVersion=3.8.1

ENV PYTHON_VERSION=${pythonVersion}

RUN apt-get update \
 && apt-get install -y \
   xz-utils

WORKDIR /python

RUN ln -s /usr/openssl /usr/local/ssl

RUN curl -LO https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz \
 && tar --strip-components 1 -xzvf Python-${PYTHON_VERSION}.tgz \
 && ./configure --prefix=/python \
 && make \
 && make install \
 && ls -l /python

ENV PATH ${PATH}:/python:/python/bin

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
 && python get-pip.py

WORKDIR /app

