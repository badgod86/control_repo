class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDc7cI4Ls9RfcnlWDFDXssphG2pIDxYlVQWcyqSbV2/09T0uMAkz6EiK/J20ZkD3IRPv+CMna+fCbgb8+nCQt0aCeHgvbZk/dbOV90+plP/YYW7UJJV0/pIRMtA5lQIJRR3g7inhpQiRTFLl4SWzDLTj48q12+9Pq9XdeMXq80KDddmYroWHyAFiKZFyt36SDt5j5ItnAGFdGVdY48+zuXvLYOFAxi0ClpgvtXSdiMXSnxWPGmMAdFqJSHhJkethiMKcShDx2X0MPUsfzxXNQzKd7ErQQKMZS2X0pX4bQGvz8pkqEE/nebWnBj7xYaFVpYPGbV7VHnFkGcOs82Py6HV',
	}  
}
