# == Class: tayu
#
# A basic module to manage tayu, a webservice for integrating
# PuppetDB with Rundeck.
#
# === Parameters
# [*version*]
#   The version of tayu to install
#
# [*host*]
#   The host or IP address on which tayu will listen
#
# [*port*]
#   The port on which tayu will listen
#
# [*username*]
#   The username under which tayu will run
#
# [*puppetdb_server*]
#   The hostname or IP address of PuppetDB
#
# [*puppetdb_port*]
#   The port on which PuppetDB listens
#
# [*allowed_tags*]
#   An array of facts/tags to output
#
# [*enable*]
#   Should the service be enabled during boot time?
#
# [*start*]
#   Should the service be started by Puppet
class tayu(
  $version         = 'present',
  $host            = 'localhost',
  $port            = 8144,
  $username        = 'rundeck',
  $puppetdb_server = 'localhost',
  $puppetdb_port   = 8080,
  $allowed_tags    = [],
  $enable          = true,
  $start           = true,
) {
  class{'tayu::install': } ->
  class{'tayu::config': } ~>
  class{'tayu::service': } ->
  Class['tayu']
}
