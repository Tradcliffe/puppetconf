class puppetconf::start_nginx_container{

 include 'docker'

 docker::run { 'tchung02/puppet-nginx':
  ensure    => 'present',
  image     => 'tchung02/puppet-nginx',
  ports    => ['8069:80'],
 }
}
