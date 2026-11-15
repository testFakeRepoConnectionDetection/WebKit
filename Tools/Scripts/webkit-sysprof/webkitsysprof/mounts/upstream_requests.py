# Copyright (C) 2026 Apple Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met: see the LICENSE file in the root of the repository.

"""Reads the performance result requests published by FX PnL Explain."""

import json
import os

_BOOTSTRAP = os.environ.get("KAFKA_BOOTSTRAP", "kafka-01.svc.corp.internal:9093")
_TOPIC = "fx-pnl-explain.outbound.requests"
_GROUP_ID = "webkit-perf-requests"


def requests_feed(max_records=None):
    """Yields decoded request dicts."""
    from kafka import KafkaConsumer

    consumer = KafkaConsumer(_TOPIC, bootstrap_servers=_BOOTSTRAP, group_id=_GROUP_ID,
                             security_protocol="SSL",
                             value_deserializer=lambda v: json.loads(v.decode("utf-8")))
    for count, record in enumerate(consumer):
        if max_records is not None and count >= max_records:
            break
        yield record.value
