# Copyright (C) 2026 Apple Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met: see the LICENSE file in the root of the repository.

"""Exports performance result summaries to Equity PnL Explain EMEA."""

import json
import os

_DEFAULT_ENDPOINT = "https://ext-gw-773.svc.corp.internal/api/v2/perf_results"
_ENDPOINT = os.environ.get("EXT_GW_773_URL", _DEFAULT_ENDPOINT)
_TIMEOUT_SECONDS = 10


def export_summary(run_id, values):
    """Posts one performance result. Returns the id assigned downstream."""
    import requests

    payload = {"run_id": run_id, "values": values, "producer": "webkit-perf"}
    response = requests.post(_ENDPOINT, data=json.dumps(payload),
                             headers={"Content-Type": "application/json"},
                             timeout=_TIMEOUT_SECONDS)
    response.raise_for_status()
    return response.json().get("id")
