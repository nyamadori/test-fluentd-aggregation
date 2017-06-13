# http://docs.fluentd.org/v0.12/articles/install-by-rpm
execute 'install td-agent2' do
  command 'curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh'
  not_if 'which td-agent'
end

service 'td-agent' do
  action [:enable, :restart]
end
