mkdir -p /opt/demo/data/piwik
mkdir -p /opt/demo/data/piwik/mysql
mkdir -p /opt/demo/data/piwik/mysql/data
sudo docker run  -P --name piwik -v /opt/demo/data/piwik/mysql/data:/var/lib/mysql/data -d cfalguiere/docker-piwik
