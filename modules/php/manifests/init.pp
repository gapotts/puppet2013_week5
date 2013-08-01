class php {
  anchor { 'php::begin': }

  include php::packages
  include php::config

  anchor { 'php::end': }

  Anchor['php::begin'] ->
  Class['php::packages'] ->
  Class['php::config'] ~>
  Anchor['php::end']
}
