tayu Puppet module
==================

[![Build Status](https://secure.travis-ci.org/smarchive/puppet-tayu.png)](http://travis-ci.org/smarchive/puppet-tayu)

Overview
--------

Install [tayu](https://github.com/sirhopcount/tayu) via Rubygems and configure it for the specific system.

Usage
-----

Example:

    class { 'tayu':
      user            => 'remoteuser',
      allowed_tags    => [ 'architecture', 'location' ],
      puppetdb_server => 'localhost',
      puppetdb_port   => 8080,
    }

Supported Platforms
-------------------

The module has been tested on the following operating systems. Testing and patches for other platforms are welcome.

* Debian Squeeze

License
-------

Copyright (c) 2013 smarchive GmbH

This script is licensed under the Apache License, Version 2.0.

See http://www.apache.org/licenses/LICENSE-2.0.html for the full license text.

Support
-------

Please log tickets and issues at our [project site](https://github.com/smarchive/puppet-tayu/issues).
