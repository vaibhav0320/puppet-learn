node default{
}

node 'puppet.local' {
	include role::master_server
}
