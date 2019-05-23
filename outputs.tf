output "confluent_lb_ips" {
  value = "${module.efd.confluent_lb_ips}"
}

output "nginx_ingress_ip" {
  value = "${module.efd.nginx_ingress_ip}"
}

output "grafana_fqdn" {
  value = "${module.efd.grafana_fqdn}"
}

output "prometheus_fqdn" {
  value = "${module.efd.prometheus_fqdn}"
}

output "influxdb_fqdn" {
  value = "${module.efd.influxdb_fqdn}"
}
