sudo apt update 
sudo apt-get install openjdk-8-jdk
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update
sudo apt-get install elasticsearch && sudo apt-get install kibana
#vim /etc/elasticsearch/elasticsearch.yml
#sudo systemctl start elasticsearch
#curl -XGET http://localhost:9200/_cluster/health?pretty
#vim /etc/kibana/kibana.yml
#systemctl start kibana

### elasticsearch.yml ###
# cluster.name: demo-elk      # give the cluster a descriptive name
# node.name: elk-1            # give the node a descriptive name
# network.host: 0.0.0.0       # change network binding
# discovery.type: single-node

### kibana.yml ###
# server.port: 5601                         # uncomment server.port
# server.host: “0.0.0.0”                    # change server.host
# server.name: “demo-kibana”                # change server.name
# uncomment elasticsearch.hosts
# elasticsearch.hosts: [“http://localhost:9200"]
