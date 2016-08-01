FROM java:openjdk-8u72-jdk

RUN mkdir -p /root/bin
RUN curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt
ENV PATH $PATH:/root/bin
RUN sbt -sbt-create
RUN sbt -sbt-version 0.13.11

RUN mkdir -p /tmp/coole-play-rest-api
WORKDIR /tmp/coole-play-rest-api
COPY app /tmp/coole-play-rest-api/
RUN sbt update
RUN rm -r /tmp/coole-play-rest-api
WORKDIR /