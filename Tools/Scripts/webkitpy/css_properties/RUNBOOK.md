# Css Properties integration runbook

Flows owned by this component. Counterparts are given as they appear in the corp CMDB.

## Outbound flows

| Flow | Counterpart | Transport | Schedule |
|---|---|---|---|
| Performance result export | `corporate-accounts-product-catalog-apac` | KAFKA | hourly |
| Performance result export | `weather-feed` | KAFKA | 06:30 UTC on business days |

## Inbound flows

| Flow | Counterpart | Transport | Schedule |
|---|---|---|---|
| Rebuild request | `news-sentiment-api` | HTTPS | 02:00 UTC daily |

## On call

If a flow fails twice in a row, open an incident on the counterpart's queue and pause the scheduler with `corpctl pause css-properties`.
