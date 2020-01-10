FROM docker.io/apache/skywalking-oap-server:6.6.0-es6

COPY application.yml /skywalking/config/application.yml

EXPOSE 11800
EXPOSE 12800

RUN echo $PWD

ENTRYPOINT ["/bin/sh","docker-entrypoint.sh"]
