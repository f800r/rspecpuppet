#
class my_module::my_service::configuration {

  $config_path = $my_module::my_service::params::config_path
  $config_file = $my_module::my_service::params::config_file

  $dynamic_content = generate('/bin/sh', '-c', 'uname')

  file { 'my_module_template_file':
    content => template('my_module/tmp/my_module.erb'),
    path    => '/tmp/my_module.cfg',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { 'service_config_file':
    ensure => file,
    path   => "${config_path}/${config_file}.tmp",
    source => "puppet:///modules/${module_name}/my_service.conf",
    owner  => 'root',
    group  => 'root',
  }


}
