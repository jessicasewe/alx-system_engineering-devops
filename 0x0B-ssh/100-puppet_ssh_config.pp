#!/usr/bin/env bash
# set up your client SSH configuration file so that you can connect to a server without typing a password.
file { 'etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => 'PasswordAuthentication',
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => 'IdentityFile',
}
