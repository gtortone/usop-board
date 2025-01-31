## Ansible playbook for uSOP boards configuration

Ansible (www.ansible.com) is a free tool to manage systems and deploy applications on Linux distro.

This repository provides four roles to manage different configuration aspects of uSOP:

* common
  * base configuration of Linux Debian

* epics
  * installation and configuration of EPICS tarball for uSOP

* ecl-ioc
  * checkout of Belle2 ECL EPICS IOC with configuration and installation

* ecl-mon
  * installation and configuration of Belle2 ECL Monitor for remote visualization of ECL data

## Playbook configuration

* common
  * group_vars/all   : default timezone, DNS servers, NTP servers, HTTP proxy server
  * group_vars/*site*: site specific configuration 

* epics
  * roles/epics/files : directory for EPICS tarball (epics.tar.gz)

* ecl-ioc
  * host_vars/*host* : Belle2 ECL IOC configuration

* ecl-mon
  * group_vars/*site* : Belle2 ECL monitor collector URL

## Usage

To run whole Ansible master playbook on a specified host:

`ansible-playbook -e hosts=usop site.yml`

To run only a specified role (with tag):

`ansible-playbook -e hosts=usop --tags=ecl-ioc site.yml`

