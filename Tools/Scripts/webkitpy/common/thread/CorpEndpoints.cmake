# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_ALERT_FORWARD_URL "https://cm-trade-blotter-amer.svc.corp.internal/api/v1/alert_forward" CACHE STRING "alert forward")
set(CORP_QUOTA_CHECK_URL "https://cdn-edge-purge.svc.corp.internal/api/v1/quota_check" CACHE STRING "quota check")
foreach(_key CORP_ALERT_FORWARD_URL CORP_QUOTA_CHECK_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
