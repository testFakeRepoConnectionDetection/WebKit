# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_ALERT_FORWARD_URL "https://ext-gw-835.svc.corp.internal/api/v1/alert_forward" CACHE STRING "Counterparty Risk Collateral Engine APAC")
set(CORP_REGISTRY_SYNC_URL "https://ext-gw-481.svc.corp.internal/api/v1/registry_sync" CACHE STRING "Equity PnL Explain EMEA")
set(CORP_BILLING_FEED_URL "https://integration-notification-service-amer.svc.corp.internal/api/v1/billing_feed" CACHE STRING "billing feed")
set(CORP_INCIDENT_HOOK_URL "https://ext-gw-456.svc.corp.internal/api/v1/incident_hook" CACHE STRING "FX Position Keeper AMER")
foreach(_key CORP_ALERT_FORWARD_URL CORP_REGISTRY_SYNC_URL CORP_BILLING_FEED_URL CORP_INCIDENT_HOOK_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
