class roles::webserver::dev {
  include profiles::base
  include profiles::apache
  include profiles::mysql
}
