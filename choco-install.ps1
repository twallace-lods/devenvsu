choco install -y dotnet-5.0-sdk
choco install -y eclipse
choco install -y jdk8 -params "source=false"
choco install -y mongodb
choco install -y mysql
choco install -y mysql.workbench
choco install -y mysql-python
choco install -y mysql-connector

choco install -y sql-server-express
choco install -y sql-server-management-studio


code --install-extension ms-vscode.cpptools
code --install-extension ms-dotnettools.csharp
code --install-extension ms-vscode.vscode-node-azure-pack


#Huge download
#wget https://golang.org/dl/go1.17.1.windows-amd64.msi -outfile "d:\go.msi"

#Control Installed Services
Stop-Service MySQL
Set-Service -Name MySQL -StartupType Manual
Stop-Service MongoDB
Set-Service -Name MongoDB -StartupType Manual

Get-Service -Name Mssql* | Stop-Service
Get-Service -name sql* | Stop-Service
Get-Service -Name Mssql* | Set-Service -StartupType Manual
Get-Service -Name sql* | Where-Object {$_.StartType -ne "Disabled"}  | Set-Service -StartupType Manual

