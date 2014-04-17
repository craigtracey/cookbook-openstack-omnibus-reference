# encoding: UTF-8
#
# Cookbook Name:: omnibus-openstack-reference
# Recipe:: default
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

include_recipe "omnibus-openstack-reference::repo"
include_recipe "omnibus-openstack-reference::packages"
include_recipe "omnibus-openstack-reference::mysql-server"
include_recipe "omnibus-openstack-reference::databases"
