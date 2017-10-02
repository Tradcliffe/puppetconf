Service {
  provider => dummy
}

class { 'nginx': }

nginx::resource::vhost { 'default':
  www_root => '/var/www/html',
}

file { '/var/www/html/index.html':
  ensure  => file,
  source  => 'puppet:///modules/puppetconf/index.html',
}

file { '/var/www/html/puppet-docker.png':
  ensure  => file,
  source  => 'puppet:///modules/puppetconf/puppet-docker.png',
}

exec { 'Disable Nginx daemon mode':
  path    => '/bin',
  command => 'echo "daemon off;" >> /etc/nginx/nginx.conf',
  unless  => 'grep "daemon off" /etc/nginx/nginx.conf',
}
