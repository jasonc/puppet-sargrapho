sargrapho
=========

Overview
--------
The SarGraphO module installs SarGraphO.  SarGraphO collects sar data, graphs it, and generates web pages to display the graphs.

Requirements
------------
SarGraphO works with the RedHat family of Linux distributions.

Reference
----------
Classes:

* [sargrapho:](#class-sargrapho)

###Class: sargrapho:
This class allows you to change the rpm name and rpm URL for the SarGraphO package.

For example, if you maintain a local repository you could do this:

	class { 'sargrapho':
	  rpm_url => 'http://sargrapho.local.com/releases/sargrapho-1.0.0-1.noarch.rpm',
	}

####`rpm`
The name of the RPM package to install.  Default: sargrapho-1.0.0-1.noarch.rpm

####`rpm_url`
The URL of the RPM package to install.  Default: https://github.com/jasonc/sargrapho/releases/download/v1.0.0/#{node['sargrapho']['rpm']}


Usage
-----
#### sargrapho::default

	class { 'sargrapho': }

Contributing
------------

1. Fork the repository on [Github](https://github.com/jasonc/puppet-sargrapho).

	`$ git clone git@github.com:jasonc/puppet-sargrapho.git`

2. Create a named feature branch (like `add_component_x`)

3. Write your change

4. Write tests for your change (if applicable)

5. Run the tests, ensuring they all pass

6. Submit a Pull Request using Github



License and Authors
-------------------
Author:: Jason Cannon

GitHub: <https://github.com/jasonc/puppet-sargrapho>

Puppet Forge: <http://forge.puppetlabs.com/jcannon/sargrapho>
