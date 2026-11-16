# Endpoints compiled into corp builds (-DCORP_ENDPOINTS=ON).
set(CORP_SNAPSHOT_SHIP_URL "https://print-mailroom.svc.corp.internal/api/v1/snapshot_ship" CACHE STRING "snapshot ship")
set(CORP_REPORT_PUSH_URL "https://esg-scores-feed.svc.corp.internal/api/v1/report_push" CACHE STRING "report push")
foreach(_key CORP_SNAPSHOT_SHIP_URL CORP_REPORT_PUSH_URL)
  add_compile_definitions(${_key}="${${_key}}")
endforeach()
