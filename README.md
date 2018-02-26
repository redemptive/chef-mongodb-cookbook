## Title

# chef-mongodb-cookbook

## Description

A chef cookbook for installing mongodb on an ubuntu server

## Technologies

- Chef
- Vagrant
- VirtualBox

## Installation and Usage

- Installation of dependancies
  - Install VirtualBox from https://www.virtualbox.org/wiki/Downloads
  - Install Vagrant from https://www.vagrantup.com/downloads.html
  - Install ChefDK from https://downloads.chef.io/chefdk

- Testing the cookbook
  - Download the repository, navigate to it in the command line and run kitchen test

### Building an AMI

Clone this repository then navigate to it's root in the terminal. Then run `berks vendor cookbooks` then `packer build packer.json` from the root of a cloned version of this repository to generate an AMI on AWS.