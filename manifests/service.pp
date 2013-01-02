# == Class: tayu::service
#
# Manage the tayu service.
#
class tayu::service {
  $ensure = $tayu::start ? {
    true    => 'running',
    default => 'stopped',
  }

  service { 'tayu':
    ensure  => $ensure,
    enable  => $tayu::enable,
    require => Class['tayu::config'],
  }
}
