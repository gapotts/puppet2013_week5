class apache::config {
  file { '/etc/httpd/conf/httpd.conf':
    content => template('apache/httpd.conf.erb'),
    owner   => 'root',
    group   => 'root',
  }

  file { '/etc/httpd/conf.d/port8080.conf':
    source => 'puppet:///modules/apache/etc/httpd/conf.d/port8080.conf',
    owner  => 'root',
    group  => 'root',
  }

  file { '/var/www/port8080/':
    ensure => 'directory',
    mode   => '0664',
  }
}
