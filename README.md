puppet-manifests
================

My managing Puppet manifests.

Install dependencies:

	$ gem install librarian-puppet deep_merge
	$ librarian-puppet install --no-use-v1-api


Run Puppet:

	$ puppet apply --hiera_config=hiera.yaml --modulepath=modules/ site.pp
