log_level = "DEBUG"
data_dir = "/nomad-data"
# bind_addr = "10.0.0.90"

ports {
  http = 4646
}
server {
  enabled = true
  bootstrap_expect = 1  # This is how many nomad servers to expect in cluster, usually it is 3 or 5 in test case 1 is enough
}

advertise {
  http = "0.0.0.0:4646"
}
