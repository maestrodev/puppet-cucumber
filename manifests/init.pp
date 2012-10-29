class cucumber($version = latest) {

  package { 'cucumber':
    ensure => $version,
    provider => gem,
  }


}
