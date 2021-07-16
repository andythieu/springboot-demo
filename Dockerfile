FROM openjdk:8-jdk-alpine3.8

ENV _JAVA_OPTIONS="-Djava.net.preferIPv4Stack=true"

RUN set -x && \
    addgroup -g 1000 appuser && \
    adduser -u 1000 -D -G appuser appuser
RUN apk add maven

COPY . /opt/app/

WORKDIR /opt/app/

