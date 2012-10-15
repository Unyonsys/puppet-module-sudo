define sudo::addconfig (
  $statement,
  $order = 50
) {
  Class[ 'sudo' ] -> Sudo::Addconfig[ $name ]
  file { "/etc/sudoers.d/${name}":
    owner   => root,
    group   => root,
    mode    => 0440,
    content => $statement,
  }
}
