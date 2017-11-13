

class lm3corp_rsyslog::server(
  String $port = undef,
) {

  class { 'rsyslog::server':
    #log_local => true,
    enable_tcp => true,
    enable_udp => true,
    port       => $port,
    address    => '*',
  }

}
