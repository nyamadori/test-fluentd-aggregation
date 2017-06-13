node[:users].each do |user|
  user user[:name]

  directory "/home/#{user[:name]}/.ssh" do
    owner user[:name]
    group user[:name]
    mode '700'
  end

  file "/home/#{user[:name]}/.ssh/authorized_keys" do
    content user[:public_key]
    owner user[:name]
    group user[:name]
    mode '600'
  end
end
