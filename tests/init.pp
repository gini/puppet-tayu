# Learn more about module testing here:
# http://docs.puppetlabs.com/guides/tests_smoke.html
class { 'tayu':
  port            => 8144,
  username        => 'remoteuser',
  allowed_tags    => [ 'architecture', 'location' ],
  puppetdb_server => 'localhost',
  puppetdb_port   => 8080,
}
