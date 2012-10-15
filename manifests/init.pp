class sudo {
  package { 'sudo':
    ensure => installed,
  }

  file { '/etc/sudoers.d':
    ensure  => directory,
    purge   => true,
    recurse => true,
    ignore  => 'README',
  }
}
