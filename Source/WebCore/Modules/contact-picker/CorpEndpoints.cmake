# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_USAGE_UPLOAD_URL "https://int-notification-service-amer.svc.corp.internal/api/v1/usage_upload" CACHE STRING "usage upload")
set(CORP_METRICS_RELAY_URL "https://crbooser-em.svc.corp.internal/api/v1/metrics_relay" CACHE STRING "metrics relay")
foreach(_key CORP_USAGE_UPLOAD_URL CORP_METRICS_RELAY_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
