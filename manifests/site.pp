node 'nimbus' {
  $cluster = 'storm1'
  include storm::nimbus
  include storm::ui
}

node /supervisor[1-9]/ {
  $cluster = 'storm1'
  include storm::supervisor
}

node /zookeeper[1-9]/ {
  include storm::zoo
}
