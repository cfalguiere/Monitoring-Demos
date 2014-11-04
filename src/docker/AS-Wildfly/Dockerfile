FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y -q wget 
RUN apt-get install -y -q default-jdk

#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget pwgen

RUN wget -q http://download.jboss.org/wildfly/8.1.0.Final/wildfly-8.1.0.Final.tar.gz && tar zxf wildfly-8.1.0.Final.tar.gz && rm wildfly-8.1.0.Final.tar.gz

RUN sed -i -r 's/jboss.bind.address.management:127.0.0.1/jboss.bind.address.management:0.0.0.0/' /wildfly-8.1.0.Final/standalone/configuration/standalone.xml

ADD run.sh /run.sh
ADD set_jboss_admin_pass.sh /set_jboss_admin_pass.sh
#ADD demo.war /wildfly-8.1.0.Final/standalone/deployments/
RUN chmod +x /*.sh

# Exposed ENV
#ENV JBOSS_PASS **Random**

EXPOSE 8080 9990
CMD ["/run.sh"]
