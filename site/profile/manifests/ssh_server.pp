class profile:ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => running,
    enabled => true,
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => '$@#%^REYGU&^%*56%^(%^*&%^&%^&RTU^&&%^&%^&%^&%^&%^&%^&%^&^*RTU%^%^*',
  }
}
