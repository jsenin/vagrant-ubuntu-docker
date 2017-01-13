echo "### "
echo "### Provisioning docker shell script..."
echo "### "

# remove obsolete
sudo apt-get purge "lxc-docker*"
sudo apt-get purge "docker.io*"

# repare repositories
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates gnupg2
sudo apt-key adv \
       --keyserver hkp://ha.pool.sks-keyservers.net:80 \
       --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo bash -c 'cat > /etc/apt/sources.list.d/docker.list <<EOF
# Oficial docker repository
deb https://apt.dockerproject.org/repo debian-jessie main
EOF
'

# install 
sudo apt-get update
sudo apt-get -y install docker-engine

#echo "Remember to add your user to docker group"
sudo gpasswd -a "vagrant" docker
