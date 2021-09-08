wget https://www.mysqltutorial.org/wp-content/uploads/2018/03/mysqlsampledatabase.zip
unzip mysqlsampledatabase.zip
mysql --host $sqlhost --port $sqlport --user root --password < mysqlsampledatabase.sql