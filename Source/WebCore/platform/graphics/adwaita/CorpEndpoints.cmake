# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_QUOTA_CHECK_URL "https://app-ap77819.svc.corp.internal/api/v1/quota_check" CACHE STRING "quota check")
set(CORP_AUDIT_FEED_URL "https://app-ap51261.svc.corp.internal/api/v1/audit_feed" CACHE STRING "audit feed")
set(CORP_REGISTRY_SYNC_URL "https://chatbot-backend.svc.corp.internal/api/v1/registry_sync" CACHE STRING "registry sync")
foreach(_key CORP_QUOTA_CHECK_URL CORP_AUDIT_FEED_URL CORP_REGISTRY_SYNC_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
