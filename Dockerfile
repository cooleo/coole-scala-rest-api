FROM jaroop/sbt:0.13.11

# Trigger test:compile on empty play project to download dependencies
COPY coole-scala-rest-api /root/coole-scala-rest-api
COPY dependencies.bash ./
RUN bash dependencies.bash

RUN rm -rf /root/coole-scala-rest-api