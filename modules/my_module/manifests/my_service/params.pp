#
class my_module::my_service::params {

  $config_file  = 'my_service.conf'
  $config_path  = '/etc/myservice/conf'

  case $::osfamily {
    'Debian': {
      $package_name = 'myservice_packagename_debian'
      $service_name = 'myservce_servicename_debian'
    }
    'Oracle': {
      $package_name = 'myservice_packagename_oracle'
      $service_name = 'myservce_servicename_oracle'
    }
    default: {
      fail("class my_service::params -> can not find configuration for osfamily ${::osfamily}")
    }
  }
}
