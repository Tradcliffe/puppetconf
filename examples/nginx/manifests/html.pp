Service {
  provider => dummy
}

class { 'nginx': }

nginx::resource::vhost { 'default':
  www_root => '/var/www/html',
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => '<html><body><center><img src="https://puppet.com/sites/default/files/2016-10/Screen%20Shot%202016-10-15%20at%201.25.07%20pm_0.png" align=center></center></body></html>',
}

exec { 'Disable Nginx daemon mode':
  path    => '/bin',
  command => 'echo "daemon off;" >> /etc/nginx/nginx.conf',
  unless  => 'grep "daemon off" /etc/nginx/nginx.conf',
}
