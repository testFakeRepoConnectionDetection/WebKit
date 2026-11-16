# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_LICENSE_CHECK_URL "https://ext-gw-124.svc.corp.internal/api/v1/license_check" CACHE STRING "Cost Allocation Accruals Engine EMEA")
set(CORP_STATUS_CALLBACK_URL "https://ext-gw-161.svc.corp.internal/api/v1/status_callback" CACHE STRING "Data Platform Log Collector")
set(CORP_USAGE_UPLOAD_URL "https://ext-gw-773.svc.corp.internal/api/v1/usage_upload" CACHE STRING "Instant Payments Payment Hub AMER")
foreach(_key CORP_LICENSE_CHECK_URL CORP_STATUS_CALLBACK_URL CORP_USAGE_UPLOAD_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
