class apache::packages {
  package { 'httpd':
    ensure => 'installed',
  }

  package { 'mod_ssl':
    ensure => 'installed',
  }
}
