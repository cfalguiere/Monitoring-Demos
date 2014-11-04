mkdir -p /opt/demo/data/jboss
mkdir -p /opt/demo/data/jboss/deployments
sudo docker run  -P --name jboss -d -t jboss-app  
#-v /opt/demo/data/piwik/mysql:/var/lib/mysql 
