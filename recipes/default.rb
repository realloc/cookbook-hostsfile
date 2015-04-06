#
# Cookbook Name:: hostsfile
# Recipe:: default

node['hostsfile']['items'].each do |ip, item|
  hostsfile_entry ip do
    hostname item["hostname"]
    unique item["unique"] || false
    aliases item["aliases"] || []
    priority item["priority"] || nil
    comment item["comment"] || nil
    action item["action"] || :create
  end
end

