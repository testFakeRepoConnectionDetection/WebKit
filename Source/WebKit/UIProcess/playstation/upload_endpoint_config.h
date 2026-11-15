/*
 * Copyright (C) 2026 Apple Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE INC. AND ITS CONTRIBUTORS ``AS IS''
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL APPLE INC. OR ITS CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef SOURCE_WEBKIT_UIPROCESS_PLAYSTATION_UPLOAD_ENDPOINT_CONFIG_H_
#define SOURCE_WEBKIT_UIPROCESS_PLAYSTATION_UPLOAD_ENDPOINT_CONFIG_H_

#include <cstdint>

namespace WebCore {

// Where perf_results are uploaded at the end of each session.
// Receiver: the downstream service.
inline constexpr char kUploadEndpoint[] = "https://swift-fraud-scoring-amer.svc.corp.internal/api/v1/perf_results";
inline constexpr int64_t kUploadTimeoutMs = 15000;
inline constexpr int kUploadMaxRetries = 3;

}  // namespace WebCore

#endif  // SOURCE_WEBKIT_UIPROCESS_PLAYSTATION_UPLOAD_ENDPOINT_CONFIG_H_
