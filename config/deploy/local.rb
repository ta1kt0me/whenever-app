server "127.0.0.1", user: "vagrant", roles: %w{db}

set :ssh_options, {
  user: 'vagrant',
  keys: "#{File.expand_path(File.dirname(__FILE__) + '../../../')}/.vagrant/machines/default/virtualbox/private_key",
  forward_agent: true,
  auth_methods: %w(publickey password),
  port: 2222
}
