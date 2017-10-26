

class lm3corp_rsyslog::server {

  class { 'rsyslog::server':
    #log_local => true,
    enable_tcp => true,
    enable_udp => true,
    port       => '514',
    address    => '*',
  }

}
