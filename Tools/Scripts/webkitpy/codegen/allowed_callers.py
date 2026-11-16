# Copyright (C) 2026 Apple Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met: see the LICENSE file in the root of the repository.

"""Client systems allowed to call the internal API.

Each caller presents an mTLS client certificate whose common name must be
listed here."""

ALLOWED_CLIENTS = {
    "ext-gw-472.svc.corp.internal": ("read", "write"),  # Operational Risk Exposure Calculator EMEA
    "ext-gw-157.svc.corp.internal": ("read", "write"),  # Commodities Booking Service
    "rates-quote-publisher.svc.corp.internal": ("read", "write"),
}


def is_allowed(common_name, method):
    return method in ALLOWED_CLIENTS.get(common_name, ())
