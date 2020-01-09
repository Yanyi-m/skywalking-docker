FROM docker.io/apache/skywalking-ui:6.6.0

MAINTAINER skywalking-docker 18670473318@163.com

COPY --from=docker.io/apache/skywalking-oap-server:6.6.0-es6 /skywalking /skywalking/oap
COPY application.yml /skywalking/oap/config/application.yml
COPY entrypoint.sh /skywalking/oap/config/entrypoint.sh

EXPOSE 11800
EXPOSE 12800
EXPOSE 8080

ENTRYPOINT ["/skywalking/oap/config/entrypoint.sh","run"]
