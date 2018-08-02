package 'httpd'
#package 'httpd' do
#  action :install
#end

#file '/var/www/html/index.html' do
#  content "<h1> Hello Rakuten !!!<h1>
#  <h2> IP Adress : #{node['ipaddress']} </h2>
#  <h2> Host name : #{node['hostname']} </h2> 
#"
#end
template '/var/www/html/index.html' do
  source 'index.html.erb'
end

template '/etc/httpd/conf/httpd.conf' do
  action :create
  source 'httpd.conf.erb'
  notifies :restart, 'service[httpd]'
end

service 'httpd' do
  action [:enable, :start]
end
