#
class my_module::my_service::service {

  $service_name = $my_module::my_service::params::service_name

  service { 'my_service':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    name       => $service_name,
  }
}
