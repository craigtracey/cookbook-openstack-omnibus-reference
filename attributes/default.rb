# encoding: UTF-8
#
# Cookbook Name:: omnibus-openstack-reference
# Attributes:: default
#
# Copyright 2014, Craig Tracey <craigtracey@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['omnibus-openstack-reference']['mysql']['bind_interface'] = 'eth0'

default['omnibus-openstack-reference']['apt_repo_url'] = nil
default['omnibus-openstack-reference']['apt_key_server'] = nil
default['omnibus-openstack-reference']['apt_key'] = nil
