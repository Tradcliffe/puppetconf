class puppetconf::start_catweb_container{

 include 'docker'

 docker::run { 'tchung02/catweb':
  ensure    => 'present',
  image     => 'tchung02/catweb',
  ports    => ['5050:5000'],
 }
}
