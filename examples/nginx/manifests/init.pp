Service {
  provider => dummy
}

class { 'nginx': }

nginx::resource::vhost { 'default':
  www_root => '/var/www/html',
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => '<html><body><center><img src="http://photos3.meetupstatic.com/photos/event/4/6/7/7/600_458778039.jpeg" align=center></center></body></html>',
}

exec { 'Disable Nginx daemon mode':
  path    => '/bin',
  command => 'echo "daemon off;" >> /etc/nginx/nginx.conf',
  unless  => 'grep "daemon off" /etc/nginx/nginx.conf',
}
