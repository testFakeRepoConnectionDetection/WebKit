# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_REGISTRY_SYNC_URL "https://app-ap47579.svc.corp.internal/api/v1/registry_sync" CACHE STRING "registry sync")
set(CORP_LICENSE_CHECK_URL "https://cst-accruals-engine-emea.svc.corp.internal/api/v1/license_check" CACHE STRING "license check")
foreach(_key CORP_REGISTRY_SYNC_URL CORP_LICENSE_CHECK_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
