class profile::ssh_server {

  package {'openssh-server':
    ensure => present,  
  }
  
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  
  ssh_authorized_key { 'root@puppet.local':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDfy8CptMroSsv0d0JHCPFv8OkxiRIqpeF/TdgMcpTt2Cx4l7t5FvtPjartplzc44sOsivtxjAFGGGtug4e7LEi2vQMqJa/x6Ene7pzeMlbRGn82dE8TAXPw7Oc5v4OYyrR094870BqXJBzFanipV/skinNFAKXcALWa60VlPoC4BWOiB8/a9oZoxEujBKZ8thUz2jdh89nriIh1L86nIqqltReHpGbxM+yJ74y9GDnqAfems6VXs5fAivpap++wlAf9nhYcGtXYdkjBAcdqpyRD+dhLtloQCCneX4NFuh8J/4jjoYB/V7W4Wr0HD+fjLx6HEFPIaoSZozhdyTeNpfb',
  }  
}
