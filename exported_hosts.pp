@@host { $::hostname:
  ip           => $::ipaddress,
  host_aliases => $::fqdn,
}

Host <<||>> 
