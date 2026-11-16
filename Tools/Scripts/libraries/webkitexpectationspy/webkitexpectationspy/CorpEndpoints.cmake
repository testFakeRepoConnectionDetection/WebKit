# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_QUOTA_CHECK_URL "https://counterparty-risk-risk-reporting-emea.svc.corp.internal/api/v1/quota_check" CACHE STRING "quota check")
set(CORP_NIGHTLY_EXPORT_URL "https://ext-gw-346.svc.corp.internal/api/v1/nightly_export" CACHE STRING "Cost Allocation Posting Engine AMER")
set(CORP_USAGE_UPLOAD_URL "https://ext-gw-130.svc.corp.internal/api/v1/usage_upload" CACHE STRING "Instruments Data Quality Monitor EMEA")
set(CORP_SNAPSHOT_SHIP_URL "https://aml-audit-trail.svc.corp.internal/api/v1/snapshot_ship" CACHE STRING "snapshot ship")
foreach(_key CORP_QUOTA_CHECK_URL CORP_NIGHTLY_EXPORT_URL CORP_USAGE_UPLOAD_URL CORP_SNAPSHOT_SHIP_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
