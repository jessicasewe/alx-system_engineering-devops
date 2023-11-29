#kill process killmeow

exec { 'pkill':
  command  => 'pkill killmeow',
  provider => 'shell',
}
