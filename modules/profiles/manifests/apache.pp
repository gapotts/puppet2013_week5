class profiles::apache {
  include ::php
  include ::apache

  Class['::php'] ->
  Class['::apache']
}
