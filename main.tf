provider "template" {
  version = "~> 1.0"
}

provider "null" {
  version = "~> 1.0"
}

provider "local" {
  version = "~> 1.2"
}

provider "aws" {
  version = "~> 2.10.0"
  region  = "us-east-1"
}

provider "kubernetes" {
  version = "~> 1.6.2"

  config_path      = "${var.kubeconfig_filename}"
  load_config_file = true
}

module "efd" {
  source = "git::https://github.com/lsst-sqre/terraform-efd.git//?ref=master"

  # replace with data lookup?
  domain_name                    = "${var.domain_name}"
  aws_zone_id                    = "${var.aws_zone_id}"
  brokers_disk_size              = "${var.brokers_disk_size}"
  deploy_name                    = "${var.deploy_name}"
  dns_enable                     = "${var.dns_enable}"
  dns_overwrite                  = "${var.dns_overwrite}"
  env_name                       = "${var.env_name}"
  enable_telegraf_daemonset      = "${var.enable_telegraf_daemonset}"
  github_token                   = "${var.github_token}"
  github_user                    = "${var.github_user}"
  grafana_admin_pass             = "${var.grafana_admin_pass}"
  grafana_admin_user             = "${var.grafana_admin_user}"
  grafana_oauth_client_id        = "${var.grafana_oauth_client_id}"
  grafana_oauth_client_secret    = "${var.grafana_oauth_client_secret}"
  grafana_oauth_team_ids         = "${var.grafana_oauth_team_ids}"
  influxdb_admin_pass            = "${var.influxdb_admin_pass}"
  influxdb_admin_user            = "${var.influxdb_admin_user}"
  influxdb_telegraf_pass         = "${var.influxdb_telegraf_pass}"
  kafka_loadbalancers            = "${var.kafka_loadbalancers}"
  kubeconfig_filename            = "${var.kubeconfig_filename}"
  prometheus_oauth_client_id     = "${var.prometheus_oauth_client_id}"
  prometheus_oauth_client_secret = "${var.prometheus_oauth_client_secret}"
  prometheus_oauth_github_org    = "${var.prometheus_oauth_github_org}"
  storage_class                  = "${var.storage_class}"
  tls_crt_path                   = "${var.tls_crt_path}"
  tls_key_path                   = "${var.tls_key_path}"
  zookeeper_data_dir_size        = "${var.zookeeper_data_dir_size}"
  zookeeper_log_dir_size         = "${var.zookeeper_log_dir_size}"
}
