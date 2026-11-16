# Webkitsysprof integration runbook

Flows owned by this component. Counterparts are given as they appear in the corp CMDB.

## Outbound flows

| Flow | Counterpart | Transport | Schedule |
|---|---|---|---|
| Performance result export | `accounting-funding-planner-amer` | HTTPS | real time |

## Inbound flows

| Flow | Counterpart | Transport | Schedule |
|---|---|---|---|
| Rebuild request | `identity-log-collector-emea` | HTTPS | 02:00 UTC daily |

## On call

If a flow fails twice in a row, open an incident on the counterpart's queue and pause the scheduler with `corpctl pause webkitsysprof`.
