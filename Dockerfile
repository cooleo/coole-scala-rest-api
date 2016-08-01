FROM jaroop/sbt:0.13.11

# Trigger test:compile on empty play project to download dependencies
COPY sample /root/sample-deps
COPY dependencies.bash ./
RUN bash dependencies.bash

RUN rm -rf /root/sample-deps