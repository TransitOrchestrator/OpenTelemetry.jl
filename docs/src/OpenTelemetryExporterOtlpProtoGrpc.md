"""
# OTLP/gRPC Exporter Documentation

This document describes the Julia implementation of the OTLP/gRPC exporter.
The implementation follows the [OTLP/gRPC Exporter Specification](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/protocol/exporter.md)
and provides the functionality to export telemetry data using gRPC.

The OTLP/gRPC exporter is the recommended way to export telemetry data to OpenTelemetry collectors.

## Related Specifications
- [OTLP/gRPC Exporter](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/protocol/exporter.md)
- [OTLP Protocol](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/protocol/otlp.md)
"""

# OpenTelemetryExporterOtlpProtoGrpc

This package uses [OpenTelemetryProto](@ref) to communicate with [OTEL Collector](https://opentelemetry.io/docs/collector/) through gRPC.

```@autodocs
Modules = [OpenTelemetryExporterOtlpProtoGrpc]
Private = false
```
