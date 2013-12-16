# == Class: tayu::config
#
# Create configuration files for tayu.
#
class tayu::config {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  file { '/etc/tayu':
    ensure => directory,
    mode   => '0755',
  }

  $host            = $tayu::host
  $port            = $tayu::port
  $username        = $tayu::username
  $puppetdb_server = $tayu::puppetdb_server
  $puppetdb_port   = $tayu::puppetdb_port
  $allowed_tags    = $tayu::allowed_tags

  file { '/etc/tayu/tayu.yml':
    ensure  => present,
    content => template('tayu/tayu.yml.erb'),
    require => File['/etc/tayu'],
  }

  file { '/etc/default/tayu':
    ensure  => present,
    content => template('tayu/tayu.confd.erb'),
  }
}
