node default{
}

node 'puppet.local' {
	include role::master_server
	file { '/root/README': 
		ensure => present,
		content => "${os.family}",
	
	}
}

node /^web/ {
	include role::app_server
}


node /^db/ {
	include role::db_server
}
