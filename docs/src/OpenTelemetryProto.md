"""
# OpenTelemetry Protocol (OTLP) Documentation

This document describes the Julia implementation of the OpenTelemetry Protocol (OTLP).
The implementation follows the [OTLP Specification](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/protocol/otlp.md)
and provides the protocol buffer definitions and serialization/deserialization functionality.

OTLP is the standard protocol for transmitting telemetry data between OpenTelemetry components.

## Related Specifications
- [OTLP Protocol](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/protocol/otlp.md)
- [OTLP/gRPC Exporter](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/protocol/exporter.md)
- [OTLP/HTTP Exporter](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/protocol/exporter.md)
"""

# OpenTelemetryProto

This package provides the julia client code to the original [proto files](https://github.com/open-telemetry/opentelemetry-proto) with [gRPCClient.jl](https://github.com/JuliaComputing/gRPCClient.jl) and [ProtoBuf.jl](https://github.com/JuliaIO/ProtoBuf.jl).

!!! note
    The major and minor version of `OpenTelemetryProto` is aligned with the release of original [opentelemetry-proto](https://github.com/open-telemetry/opentelemetry-proto/releases). The patch version is Julia specific.

```@autodocs
Modules = [OpenTelemetryProto]
Private = false
```