# Network access of the webkit-perf deployment (corp landing zone).

module "egress_01" {
  source           = "../modules/private-link-consumer"
  endpoint_service = "com.corp.privatelink.trade-surveillance-alert-generator-emea"
  port             = 443
}

# Commodities Trade Blotter AMER
module "egress_02" {
  source           = "../modules/private-link-consumer"
  endpoint_service = "com.corp.privatelink.ext-gw-726"
  port             = 443
}

data "aws_security_group" "peer_03" {
  tags = {
    Application = "Loans Document Store"
  }
}

resource "aws_security_group_rule" "ingress_03" {
  type                     = "ingress"
  from_port                = 8443
  to_port                  = 8443
  protocol                 = "tcp"
  security_group_id        = var.service_sg_id
  source_security_group_id = data.aws_security_group.peer_03.id
}

module "egress_04" {
  source           = "../modules/private-link-consumer"
  endpoint_service = "com.corp.privatelink.identity-secrets-vault-amer"
  port             = 443
}

data "aws_security_group" "peer_05" {
  tags = {
    app = "rates-quote-publisher"
  }
}

resource "aws_security_group_rule" "ingress_05" {
  type                     = "ingress"
  from_port                = 8443
  to_port                  = 8443
  protocol                 = "tcp"
  security_group_id        = var.service_sg_id
  source_security_group_id = data.aws_security_group.peer_05.id
}
