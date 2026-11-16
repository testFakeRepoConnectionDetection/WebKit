# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_NIGHTLY_EXPORT_URL "https://corporate-accounts-document-store-amer.svc.corp.internal/api/v1/nightly_export" CACHE STRING "nightly export")
set(CORP_QUOTA_CHECK_URL "https://ext-gw-208.svc.corp.internal/api/v1/quota_check" CACHE STRING "Retail Accounts Repayment Scheduler AMER")
foreach(_key CORP_NIGHTLY_EXPORT_URL CORP_QUOTA_CHECK_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
