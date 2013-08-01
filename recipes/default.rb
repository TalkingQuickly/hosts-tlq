if node[:hosts]
  node[:hosts].each do |line|
    hostsfile_entry line['ip'] do
      hostname  line['host']
      action    :create
    end
  end
end