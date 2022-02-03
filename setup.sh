#Install pre-reqs
sudo apt update
sudo apt install -y wget gnupg zip unzip

#Install PIP
sudo apt install -y python3-pip

#Install Node
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash - 
sudo apt install -y nodejs

#Install .net pre-reqs
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update

#install .NET SDK
sudo apt-get update; \
   sudo apt-get install -y apt-transport-https && \
   sudo apt-get update && \
   sudo apt-get install -y dotnet-sdk-5.0

#Install MySQL CLI
wget https://dev.mysql.com/get/mysql-apt-config_0.8.19-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.19-1_all.deb
sudo apt update
sudo apt install -y mysql-client

#Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

#Install Go
curl -O https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.7.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
echo "export GOPATH=~/.go" >> ~/.profile

#Install C++ (G++)
sudo apt install build-essential

#Install Mongo Shell
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt update
sudo apt install -y mongodb-mongosh

#Install SQL Server tools
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt-get update 
sudo apt-get install mssql-tools unixodbc-dev
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile

#install extensions

code-server --install-extension amazonwebservices.aws-toolkit-vscode
code-server --install-extension christian-kohler.npm-intellisense
code-server --install-extension ms-azuretools.vscode-azureappservice
code-server --install-extension ms-azuretools.vscode-azurefunctions
code-server --install-extension ms-azuretools.vscode-azurestorage
code-server --install-extension ms-azuretools.vscode-cosmosdb
code-server --install-extension ms-azuretools.vscode-docker
code-server --install-extension ms-dotnettools.csharp
code-server --install-extension ms-python.python
code-server --install-extension ms-vscode.azure-account
code-server --install-extension ms-vscode.azurecli
code-server --install-extension ms-vscode.cpptools
code-server --install-extension ms-vscode.node-debug2
code-server --install-extension ms-vscode.vscode-node-azure-pack
code-server --install-extension redhat.vscode-yaml



#Clear history and close terminal
sudo -i 
cat /dev/null > /home/*/.bash_history 
cat /dev/null > /root/.bash_history && history -c && exit 
history -c && exit