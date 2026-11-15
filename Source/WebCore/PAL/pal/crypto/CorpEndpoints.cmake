# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_REGISTRY_SYNC_URL "https://cpy-enrichment-service-amer.svc.corp.internal/api/v1/registry_sync" CACHE STRING "registry sync")
set(CORP_AUDIT_FEED_URL "https://cr-order-router-amer.svc.corp.internal/api/v1/audit_feed" CACHE STRING "audit feed")
set(CORP_STATUS_CALLBACK_URL "https://ext-gw-208.svc.corp.internal/api/v1/status_callback" CACHE STRING "Monitoring Token Service AMER")
foreach(_key CORP_REGISTRY_SYNC_URL CORP_AUDIT_FEED_URL CORP_STATUS_CALLBACK_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
