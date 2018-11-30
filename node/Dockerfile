FROM node:10.6

RUN apt-get update && apt-get install -y \
        git \
        mc \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.ssh \
    && echo "\tHost *\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

ARG USER_ID
ENV USER_ID $USER_ID
ARG GROUP_ID
ENV GROUP_ID $GROUP_ID

WORKDIR /var/www

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
