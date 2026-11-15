# Copyright (C) 2026 Apple Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met: see the LICENSE file in the root of the repository.

"""Client systems allowed to call the internal API.

Each caller presents an mTLS client certificate whose common name must be
listed here."""

ALLOWED_CLIENTS = {
    "cash-management-settlement-engine-apac.svc.corp.internal": ("read", "write"),  # Cash Management Settlement Engine APAC
    "liquidity-risk-stress-testing-amer.svc.corp.internal": ("read", "write"),  # Liquidity Risk Stress Testing AMER
    "data-platform-secrets-vault-emea.svc.corp.internal": ("read", "write"),
}


def is_allowed(common_name, method):
    return method in ALLOWED_CLIENTS.get(common_name, ())
