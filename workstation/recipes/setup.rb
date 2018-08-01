package 'tree' do
  action :install
end

#file '/etc/motd' do
  #content 'Property of...

  #IPADDRESS : 172.31.27.76
  #HOSTNAME : ip-172-31-27-76
  #MEMORY : 546156 kB
  #CPU : 1795.673 MHz
#,
#  content "Property of ...
#  IPADDRESS : #{node['ipaddress']}
#  HOSTNAME : #{node['hostname']}
#  MEMORY : #{node['memory']['total']}
#  CPU : #{node['cpu']['0']['mhz']}
#"
#end
template '/etc/motd' do
  source 'motd.erb'
end
