require 'vagrant-openstack-provider'
require 'yaml'

VAGRANTFILE_API_VERSION = "2"

configuration = YAML.load_file(File.join(File.dirname(__FILE__), 'credentials.yml'))

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config |
    config.ssh.username = 'ubuntu'
    config.ssh.private_key_path = "ubuntuuu.pem"
    config.vm.provider :openstack do |os, override |
        os.identity_api_version = '3'
        os.openstack_auth_url = configuration['openstack_auth_url']
        os.domain_name = configuration['domain_name']
        os.username = configuration['username']
        os.password = configuration['password']
        os.tenant_name = configuration['tenant_name']
        os.project_name  = configuration['project_name']
        os.keypair_name   = 'ubuntuuu'
        os.image = configuration['image']
        os.flavor = configuration['flavor']
        os.server_name = configuration['server_name']
        override.vm.synced_folder '.', '/vagrant', disabled: true
    end
end
