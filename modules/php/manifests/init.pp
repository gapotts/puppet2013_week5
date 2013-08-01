class php {
  include php::packages
  include php::config

  Class['php::packages'] ->
  Class['php::config']
}
