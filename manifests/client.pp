

class lm3corp_rsyslog::client {

  class { 'rsyslog::client':
    log_remote  => true,
    remote_type => 'tcp',
    log_local   => false,
    server      => 'loghost',
    port        => '514',
  }

}
