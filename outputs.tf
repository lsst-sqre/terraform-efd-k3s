output "confluent_lb0" {
  value = "${module.efd.confluent_lb0}"
}

output "confluent_lb1" {
  value = "${module.efd.confluent_lb1}"
}

output "confluent_lb2" {
  value = "${module.efd.confluent_lb2}"
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
