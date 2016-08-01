FROM ingensi/oracle-jdk
MAINTAINER Hung Nguyen <hung.nguyendang@outlook.com>
RUN yum -y install unzip && yum clean all
RUN cd /opt && wget https://downloads.typesafe.com/typesafe-activator/1.3.10/typesafe-activator-1.3.10.zip && unzip typesafe-activator-1.3.10.zip && rm typesafe-activator-1.3.10.zip
ENV PATH=$PATH:/opt/activator-dist-1.3.10/
EXPOSE 9000 8888
RUN chmod +x /opt/activator-dist-1.3.10/activator
RUN mkdir /app
WORKDIR /app

#CMD ["activator", "run"]

ENTRYPOINT ["/opt/activator-dist-1.3.6/activator", "-Dhttp.address=0.0.0.0"]

CMD ["activator", "run"]
# Default Command
#CMD ["ui"]
