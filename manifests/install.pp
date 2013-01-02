# == Class: tayu::install
#
# Install tayu from Rubygems and deploy init script.
#
class tayu::install {
  package { 'tayu':
    ensure   => $tayu::version,
    provider => 'gem',
  }

  file { '/etc/init.d/tayu':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/tayu/tayu.init',
  }
}
