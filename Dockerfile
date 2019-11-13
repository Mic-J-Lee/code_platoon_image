FROM python:3.8.0-buster

RUN curl -sL https://deb.nodesource.com/setup_13.x | bash - && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    postgresql \
    postgresql-client \
    nodejs \
    git

WORKDIR /usr/local/src/code_platoon

COPY ./ ./
COPY .bashrc /root/.bashrc

CMD bash
