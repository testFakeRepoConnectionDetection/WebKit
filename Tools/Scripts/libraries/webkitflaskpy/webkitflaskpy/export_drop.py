# Copyright (C) 2026 Apple Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met: see the LICENSE file in the root of the repository.

"""Drops the nightly performance result export on the inbound share of Credit Booking Service EMEA."""

import csv
import io
import os

_HOST = os.environ.get("EXT_GW_862_SFTP_HOST", "ext-gw-862-sftp.svc.corp.internal")
_REMOTE_DIR = "/incoming/perf_results"


def upload(rows, run_date):
    """Writes rows as CSV and uploads them as perf_results_<run_date>.csv."""
    import paramiko

    buffer = io.StringIO()
    csv.writer(buffer).writerows(rows)
    transport = paramiko.Transport((_HOST, 22))
    key = paramiko.RSAKey.from_private_key_file(os.environ["SFTP_KEY_PATH"])
    transport.connect(username=os.environ["SFTP_USER"], pkey=key)
    try:
        sftp = paramiko.SFTPClient.from_transport(transport)
        with sftp.open("%s/perf_results_%s.csv" % (_REMOTE_DIR, run_date), "w") as remote:
            remote.write(buffer.getvalue())
    finally:
        transport.close()
