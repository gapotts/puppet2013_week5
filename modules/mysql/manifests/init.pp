class mysql {
  anchor { 'mysql::begin': }

  include mysql::packages

  anchor { 'mysql::end': }

  Anchor['mysql::begin'] ->
  Class['mysql::packages'] ~>
  Anchor['mysql::end']
}
