FROM docker.pkg.github.com/agilesyndrome/syndromeos-base/syndromeos:latest

ARG pythonVersion=3.8.1
ARG pythonBuildDep=3.6


ENV PYTHON_VERSION=${pythonVersion}
ENV PYTHON_BUILDDEP=${pythonBuildDep}

WORKDIR /build

RUN echo "deb-src http://archive.ubuntu.com/ubuntu/ bionic main" >> /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y xz-utils uuid-dev \
 && apt-get -y build-dep python${PYTHON_BUILDDEP} \
 && curl -LO https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz \
 && tar --strip-components 1 -xzvf Python-${PYTHON_VERSION}.tgz \
 && ./configure --prefix=/python \
 && make -s -j4 \
 && make install \
 && ls -l /python \
 && rm -rf /build \
 && apt-get clean all \
 && rm -rf /var/lib/apt/lists/

ENV PATH ${PATH}:/python:/python/bin

WORKDIR /app

