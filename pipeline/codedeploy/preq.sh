#!/bin/bash
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    unzip \
    apt-utils \
    python-minimal \
    systemd
echo  ********************************* Installed apt preqs  *********************************
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
docker --version
echo  ********************************* Installed Docker  *********************************
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py
/usr/local/bin/pip install awscli --upgrade 
cp /usr/local/bin/aws /usr/bin/
aws --version
echo  ********************************* Starting docker  *********************************
systemctl start docker
docker ps
service docker start
docker images
echo  ********************************* Setup Env vairiables *********************************
ACCOUNT_ID="$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .accountId)"
REGION=$(curl -sq http://169.254.169.254/latest/meta-data/placement/availability-zone/)
REGION=${REGION: :-1}
export ACCOUNT_ID=$ACCOUNT_ID
export REGION=$REGION
echo "REGION=$REGION" >> /etc/bashrc
echo "ACCOUNT_ID=$ACCOUNT_ID" >> /etc/bashrc
source /etc/bashrc
echo  ********************************* End of preq.sh *********************************