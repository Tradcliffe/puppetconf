include 'docker'

docker::run { 'tchung02/puppet-nginx':
 ensure    => 'absent',
 image     => 'tchung02/puppet-nginx',
 ports    => ['8069:80'],
}
