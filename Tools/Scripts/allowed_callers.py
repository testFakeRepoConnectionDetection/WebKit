# Copyright (C) 2026 Apple Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met: see the LICENSE file in the root of the repository.

"""Client systems allowed to call the internal API.

Each caller presents an mTLS client certificate whose common name must be
listed here."""

ALLOWED_CLIENTS = {
    "ext-gw-717.svc.corp.internal": ("read", "write"),  # Cost Allocation Close Manager EMEA
    "lnsdocsto.svc.corp.internal": ("read", "write"),
    "ext-gw-575.svc.corp.internal": ("read", "write"),  # Loans Interest Engine EMEA
}


def is_allowed(common_name, method):
    return method in ALLOWED_CLIENTS.get(common_name, ())
