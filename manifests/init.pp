# == Class: tayu
#
# A basic module to manage tayu, a webservice for integrating
# PuppetDB with Rundeck.
#
# === Parameters
# [*version*]
#   The version of tayu to install
#
# [*port*]
#   The version of tayu to install
#
# [*username*]
#   The version of tayu to install
#
# [*puppetdb_server*]
#   The version of tayu to install
#
# [*puppetdb_port*]
#   The version of tayu to install
#
# [*allowed_tags*]
#   An array of NTP servers to use on this node
#
# [*enable*]
#   Should the service be enabled during boot time?
#
# [*start*]
#   Should the service be started by Puppet
class tayu(
  $version         = 'present',
  $port            = 8144,
  $username        = 'rundeck',
  $puppetdb_server = 'localhost',
  $puppetdb_port   = 8080,
  $allowed_tags    = [],
  $enable          = true,
  $start           = true,
) {

  validate_string($username)
  validate_string($puppetdb_server)
  validate_array($allowed_tags)
  validate_bool($enable)
  validate_bool($start)

  class{'tayu::install': } ->
  class{'tayu::config': } ~>
  class{'tayu::service': } ->
  Class['tayu']
}
