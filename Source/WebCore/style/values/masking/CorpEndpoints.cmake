# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_INCIDENT_HOOK_URL "https://crdseteng-am.svc.corp.internal/api/v1/incident_hook" CACHE STRING "incident hook")
set(CORP_QUOTA_CHECK_URL "https://fad-event-processor.svc.corp.internal/api/v1/quota_check" CACHE STRING "quota check")
set(CORP_STATUS_CALLBACK_URL "https://app-ap57830.svc.corp.internal/api/v1/status_callback" CACHE STRING "status callback")
foreach(_key CORP_INCIDENT_HOOK_URL CORP_QUOTA_CHECK_URL CORP_STATUS_CALLBACK_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
