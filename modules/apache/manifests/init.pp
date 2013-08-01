class apache (
   $max_clients = $apache::params::max_clients,
) inherits apache::params {

  if ! (is_integer($max_clients)) {
    fail("max_clients does not appear to be an integer: ${max_clients}")
  }

  anchor { 'apache::begin': }

  include apache::packages
  include apache::config
  include apache::services

  anchor { 'apache::end': }

  Anchor['apache::begin'] ->
  Class['apache::packages'] ->
  Class['apache::config'] ~>
  Class['apache::services'] ~>
  Anchor['apache::end']

  Anchor['apache::begin'] ~>
  Class['apache::services']

}
