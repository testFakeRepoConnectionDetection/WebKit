# Network access of the webkit-perf deployment (corp landing zone).

module "egress_01" {
  source           = "../modules/private-link-consumer"
  endpoint_service = "com.corp.privatelink.geoip-lookup"
  port             = 443
}

# Loans Batch Processor EMEA
module "egress_02" {
  source           = "../modules/private-link-consumer"
  endpoint_service = "com.corp.privatelink.ext-gw-498"
  port             = 443
}

module "egress_03" {
  source           = "../modules/private-link-consumer"
  endpoint_service = "com.corp.privatelink.identity-token-service-amer"
  port             = 443
}

module "egress_04" {
  source           = "../modules/private-link-consumer"
  endpoint_service = "com.corp.privatelink.aml-report-builder-amer"
  port             = 443
}
