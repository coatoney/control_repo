class minecraft {
  file { '/opt/minecraft':
    ensure  => directory,
  }
  file { '/opt/mincraft/minecraft_server.jar':
    ensure  => file,
    source  => "https://.......",
  }
  package { 'java':
    ensure  => present,
  }
  file { '/opt/minecraft/eula.txt':
    ensure  => file,
    content => 'eula=true',
  }
  file { '/etc/systemd/system/minecraft.service':
    ensure  => file,
    source  => 'puppet:///modules/minecraft/minecraft.service',
  }
}
