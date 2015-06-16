
hostsfile_entry "self" do
  hostname node.name
  ip_address node.ipaddress
  unique false
  action :create
end
