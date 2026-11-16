# Benchmark Runner integration runbook

Flows owned by this component. Counterparts are given as they appear in the corp CMDB.

## Outbound flows

| Flow | Counterpart | Transport | Schedule |
|---|---|---|---|
| Performance result export | `Credit Order Router AMER` | KAFKA | 02:00 UTC daily |
| Performance result export | `counterparties-enrichment-service-amer` | HTTPS | on each release |

## Inbound flows

| Flow | Counterpart | Transport | Schedule |
|---|---|---|---|
| Rebuild request | `monitoring-file-transfer-hub-apac` | SFTP | on each release |

## On call

If a flow fails twice in a row, open an incident on the counterpart's queue and pause the scheduler with `corpctl pause benchmark-runner`.
