class php::config {
  file { '/etc/php.ini':
    source => 'puppet:///modules/php/etc/php.ini',
    owner  => 'root',
    group  => 'root',
    mode   => '0444',
  }
}
