# Network access of the webkit-perf deployment (corp landing zone).

data "aws_security_group" "peer_01" {
  tags = {
    app = "loans-account-ledger-amer"
  }
}

resource "aws_security_group_rule" "ingress_01" {
  type                     = "ingress"
  from_port                = 8443
  to_port                  = 8443
  protocol                 = "tcp"
  security_group_id        = var.service_sg_id
  source_security_group_id = data.aws_security_group.peer_01.id
}

data "aws_security_group" "peer_02" {
  tags = {
    app = "counterparties-data-quality-monitor-emea"
  }
}

resource "aws_security_group_rule" "ingress_02" {
  type                     = "ingress"
  from_port                = 8443
  to_port                  = 8443
  protocol                 = "tcp"
  security_group_id        = var.service_sg_id
  source_security_group_id = data.aws_security_group.peer_02.id
}

# Counterparties Data Quality Monitor APAC
module "egress_03" {
  source           = "../modules/private-link-consumer"
  endpoint_service = "com.corp.privatelink.ext-gw-327"
  port             = 443
}
