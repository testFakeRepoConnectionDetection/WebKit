# Copyright (C) 2026 Apple Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met: see the LICENSE file in the root of the repository.

"""Publishes performance result events for the downstream service."""

import json
import os

_BOOTSTRAP = os.environ.get("KAFKA_BOOTSTRAP", "kafka-01.svc.corp.internal:9093")
_TOPIC = "app-ap02348.inbound.perf_results"


def publish(events):
    """Sends one message per event, keyed by event id."""
    from kafka import KafkaProducer

    producer = KafkaProducer(bootstrap_servers=_BOOTSTRAP, security_protocol="SSL",
                             value_serializer=lambda v: json.dumps(v).encode("utf-8"))
    for event_id, event in events.items():
        producer.send(_TOPIC, key=event_id.encode("utf-8"), value=event)
    producer.flush()
