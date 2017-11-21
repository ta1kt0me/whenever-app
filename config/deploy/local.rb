server "127.0.0.1", user: "vagrant", roles: %w{db}

set :ssh_options, {
  user: 'vagrant',
  keys: "#{ENV['HOME']}/Dev/lab/ruby/whenever/.vagrant/machines/default/virtualbox/private_key",
  forward_agent: true,
  auth_methods: %w(publickey password),
  port: 2222
}
