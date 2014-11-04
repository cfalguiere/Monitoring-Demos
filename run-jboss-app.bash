mkdir -p /opt/demo/data/jboss
mkdir -p /opt/demo/data/jboss/deployments
cp src/demo-jee/demo/target/demo.war /opt/demo/data/jboss/deployments/demo.war
sudo docker run  -P --name jboss -v /opt/demo/data/jboss/deployments:/wildfly-8.1.0.Final/standalone/deployments/ -d -t jboss-app  
