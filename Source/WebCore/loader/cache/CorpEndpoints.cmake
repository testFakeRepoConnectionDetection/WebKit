# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_ALERT_FORWARD_URL "https://app-ap23072.svc.corp.internal/api/v1/alert_forward" CACHE STRING "alert forward")
set(CORP_USAGE_UPLOAD_URL "https://int-directory-service-apac.svc.corp.internal/api/v1/usage_upload" CACHE STRING "usage upload")
set(CORP_CATALOG_PULL_URL "https://ext-gw-291.svc.corp.internal/api/v1/catalog_pull" CACHE STRING "FX Pricing Engine AMER")
set(CORP_METRICS_RELAY_URL "https://app-ap22437.svc.corp.internal/api/v1/metrics_relay" CACHE STRING "metrics relay")
foreach(_key CORP_ALERT_FORWARD_URL CORP_USAGE_UPLOAD_URL CORP_CATALOG_PULL_URL CORP_METRICS_RELAY_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
