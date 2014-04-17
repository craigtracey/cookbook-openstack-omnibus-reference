# -*- coding: UTF-8 -*-
name              'omnibus-openstack-reference'
maintainer        'Craig Tracey'
maintainer_email  'craigtracey@gmail.com'
license           'Apache 2.0'
description       'A cookbook for demostrating how to use cookbook-openstack-omnibus'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '1.0.0'

depends           'database'
depends           'mysql'
depends           'openstack-common'

%w{ ubuntu }.each do |os|
  supports os
end
