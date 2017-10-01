class puppetconf::stop_catweb_container{

 include 'docker'

 docker::run { 'tchung02/catweb':
     ensure => 'absent',
     image => 'tchung02/catweb',
     ports => ['5050:5000'],
 }
}
