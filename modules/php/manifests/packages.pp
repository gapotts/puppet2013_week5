class php::packages {
  package { 'php':
    ensure => 'installed',
  }

  package { 'php-cli':
    ensure => 'installed',
  }
}
