fuel-plugin-dedicated-network-node
==================================

**Table of Contents**

  * [Purpose](#purpose)
  * [Compatibility](#compatibility)
  * [Configuration](#configuration)
  * [How it works](#how-it-works)

## Purpose
The main purpose of this plugin is allow to deploy Openstack by Fuel with dedicated network nodes. Neutron agents and public VIPs will be hosted on dedicated nodes. It's allow to separate controller and another nodes from public network at all.

## Compatibility

| Plugin version | Fuel version |
| -------------- | ------------ |
| 9.x.x          | Fuel-9.x     |

## Configuration
Plugin settings are available on Environment -> Networks -> Other page. Some important notes:
* End user has ability to separate L3, dhcp and metadata Neutron agents from
  controllers to dedicated nodes.
* End user has ability to separate haproxy and Public VIP landing from
  controllers to dedicated nodes.
* End user has ability to separate v-router network namespace from
  controllers to dedicated nodes.

## How it works
General workflow
* Plugin re-define some variables and ovverride some standart fuel tasks 
  for prevent to deploy Neutron agents and Public-VIP on controller nodes.