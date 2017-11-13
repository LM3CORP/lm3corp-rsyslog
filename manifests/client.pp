

class lm3corp_rsyslog::client(
  String $server = undef,
) {

  class { 'rsyslog::client':
    log_remote  => true,
    remote_type => 'tcp',
    log_local   => false,
    server      => $server,
    port        => '514',
  }

}
