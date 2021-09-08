#Install PIP
#sudo apt install -y python3-pip

#Install .net pre-reqs
#wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
#sudo dpkg -i packages-microsoft-prod.deb
#rm packages-microsoft-prod.deb

#install .NET SDK
#sudo apt-get update; \
#  sudo apt-get install -y apt-transport-https && \
#  sudo apt-get update && \
#  sudo apt-get install -y dotnet-sdk-5.0

#Install AWS CLI
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip awscliv2.zip
#sudo ./aws/install

#Install Azure CLI
#curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

#Install Go
curl -O https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.7.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
echo "export GOPATH=~/.go" >> ~/.profile
