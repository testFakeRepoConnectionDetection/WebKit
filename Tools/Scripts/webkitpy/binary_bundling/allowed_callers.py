# Copyright (C) 2026 Apple Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met: see the LICENSE file in the root of the repository.

"""Client systems allowed to call the internal API.

Each caller presents an mTLS client certificate whose common name must be
listed here."""

ALLOWED_CLIENTS = {
    "settlement-nav-calculator.svc.corp.internal": ("read", "write"),  # Settlement NAV Calculator
    "instruments-static-data-hub.svc.corp.internal": ("read", "write"),  # Instruments Static Data Hub
    "aml-rules-engine.svc.corp.internal": ("read", "write"),
}


def is_allowed(common_name, method):
    return method in ALLOWED_CLIENTS.get(common_name, ())
