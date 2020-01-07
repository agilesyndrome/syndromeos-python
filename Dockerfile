FROM docker.pkg.github.com/agilesyndrome/syndromeos-base/syndromeos:latest

ARG pythonVersion=3.8.1


ENV PYTHON_VERSION=${pythonVersion}

RUN apt-get update \
 && apt-get install -y \
   xz-utils \
 && apt-get clean all \
 && rm -rf /var/lib/apt/lists/

WORKDIR /python

ENV LDFLAGS "-L${OPENSSL_PATH}/lib/"
ENV LD_LIBRARY_PATH "${OPENSSL_PATH}/lib/"
ENV CPPFLAGS "-I${OPENSSL_PATH}/include -I${OPENSSL_PATH}/include/openssl"

RUN env \
 && curl -LO https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz \
 && tar --strip-components 1 -xzvf Python-${PYTHON_VERSION}.tgz \
 && ./configure --prefix=/python \
 && make \
 && make install \
 && ls -l /python

ENV PATH ${PATH}:/python:/python/bin

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
 && python get-pip.py

WORKDIR /app

