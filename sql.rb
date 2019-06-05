sudo yum install wget -y
__________________________ 

sudo yum update
 wget http://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
sudo rpm -Uvh mysql57-community-release-el7-9.noarch.rpm
 sudo yum install mysql-server -y
 sudo systemctl start mysqld
 sudo systemctl status mysqld


apt_update 'yum' do
  action :update
end

remote_file "mysql57-community-release-el7-9.noarch.rpm" do
force_unlink true
  source "http://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm"
end

execute 'latest.zip' do
  command 'rpm -Uvh mysql57-community-release-el7-9.noarch.rpm'
end
package 'mysql-server' do
  action :install
end
service 'mysqld' do
  action [ :start ]
end