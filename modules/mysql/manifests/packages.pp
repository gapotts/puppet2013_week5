class mysql::packages {
  package { 'mysql':
    ensure => 'installed',
  }
  package { 'mysql-server':
    ensure => 'installed',
  }
}
