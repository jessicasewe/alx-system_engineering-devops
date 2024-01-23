#kill process killmeow

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}
