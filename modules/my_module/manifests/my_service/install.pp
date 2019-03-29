#
class my_module::my_service::install {

  $package_name = $my_module::my_service::params::package_name

  package { 'my_service':
    ensure => present,
    name   => $package_name,
  }

}
