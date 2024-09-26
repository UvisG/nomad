data_dir = "/nomad-client-data"
name = "nomad-client02"

client {
  enabled = true
  servers = ["10.0.0.90:4647"]
}

plugin "qemu" {
  config {
    image_paths = ["/dev/libviret_vg"]
    args_allowlist = ["-drive", "-m", "-smp", "-cdrom", "-boot", "-enable-kvm", "-nographic", "-netdev", "-cpu"]
  }
}


ports {
  http = 5656
}
