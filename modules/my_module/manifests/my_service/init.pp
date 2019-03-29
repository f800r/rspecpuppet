#
class my_module::my_service::init (
  $package_name = $my_module::my_service::params::package_name,
  $service_name = $my_module::my_service::params::service_name,
  $config_path  = $my_module::my_service::params::config_path,
  $config_file  = $my_module::my_service::params::config_file,
) inherits my_module::my_service::params {

  class { 'my_module::my_service::install': }
    -> class { 'my_module::my_service::configuration': }
    ~> class { 'my_module::my_service::service': }
    -> Class['my_module::my_service::init']
}
