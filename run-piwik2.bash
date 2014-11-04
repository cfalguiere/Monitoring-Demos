mkdir -p /opt/demo/data/piwik
mkdir -p /opt/demo/data/piwik/mysql
sudo docker run  -P --name piwik -v /opt/demo/data/piwik/mysql:/var/lib/mysql -d cfalguiere/docker-piwik
