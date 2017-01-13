echo "### "
echo "### Provisioning docker-compose shell script..."
echo "### "

sudo apt-get install -y "curl"
sudo curl -s -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
