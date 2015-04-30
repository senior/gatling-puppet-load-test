# Install jenkins using the jenkins forge module
class {'jenkins':
  # Adds exception to firewall for jenkins
  configure_firewall => true,
}

# Loading the git plugin fails silently if the git-client plugin
# isn't installed along side it.
jenkins::plugin {'git-client': ;}

jenkins::plugin {'git': ;}