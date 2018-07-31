package 'httpd'
#package 'httpd' do
#  action :install
#end

file '/var/www/html/index.html' do
  content '<h1> Hello Rakuten !!!<h1>'
end

service 'httpd' do
  action [:enable, :start]
end

