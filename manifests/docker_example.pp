class puppetconf::docker_examples{

 include 'docker'

# docker::registry { 'https://index.docker.io/v1/':
#   username => ‘’,
#   password => ‘password’,
#   email    => ‘tricia.radcliffe@gmail.com’,
# }

 docker::image { 'ubuntu':
     image_tag => 'trusty',
 }
 
 docker::run { 'helloworld':
   image   => 'base',
   command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
 }

 docker::run { 'goodbyecruelworld':
   image   => 'base',
   command => '/bin/sh -c "while true; do echo goodbye cruel world; sleep 1; done"',
 }
}

