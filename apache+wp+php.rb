apt_update 'httpd' do
  action :update
end

package 'httpd' do
  action :install
end

service 'httpd' do
  action [ :enable, :start ]
end


package 'php' do
    action :install
end

package 'php-pear' do
    action :install
end

#package 'libapache2-mod-php7' do
 # action :install
 # notifies :restart, "service[httpd]"
#end


package 'php-mysql' do
    action :install
    notifies :restart, "service[httpd]"
end



#package 'wget' do
 # action :install
#end

package 'unzip' do
  action :install
end

remote_file "latest.zip" do
force_unlink true
  source "http://wordpress.org/latest.zip"
end

execute 'latest.zip' do
  command ' unzip -q latest.zip -d /var/www/html/'
end

directory '/var/www/html/wordpress/wp-content/uploads' do
  owner 'apache'
  group 'apache'
  mode '0755'
  action :create
  recursive true
end

execute 'cd' do
  command 'cd /var/www/html/wordpress/ && mv wp-config-sample.php wp-config.php'
end
