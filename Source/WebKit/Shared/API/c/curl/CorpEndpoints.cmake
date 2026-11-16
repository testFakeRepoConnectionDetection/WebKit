# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_AUDIT_FEED_URL "https://ext-gw-575.svc.corp.internal/api/v1/audit_feed" CACHE STRING "Retail Accounts Contract Manager AMER")
set(CORP_REGISTRY_SYNC_URL "https://kyc-evidence-archive-apac.svc.corp.internal/api/v1/registry_sync" CACHE STRING "registry sync")
set(CORP_ARCHIVE_DROP_URL "https://ext-gw-627.svc.corp.internal/api/v1/archive_drop" CACHE STRING "Counterparty Risk Backtesting AMER")
foreach(_key CORP_AUDIT_FEED_URL CORP_REGISTRY_SYNC_URL CORP_ARCHIVE_DROP_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
