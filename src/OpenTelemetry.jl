"""
# OpenTelemetry.jl

This is the main module for the Julia implementation of OpenTelemetry.
It provides a unified interface for distributed tracing, metrics, and logging.

The implementation follows the [OpenTelemetry Specification](https://github.com/open-telemetry/opentelemetry-specification)
and is organized into several submodules:

- `OpenTelemetryAPI`: Core API interfaces and types
- `OpenTelemetrySDK`: Concrete implementations of the API
- `OpenTelemetryProto`: Protocol buffer definitions and serialization
- `OpenTelemetryExporter`: Exporters for different backends

## Related Specifications
- [OpenTelemetry Specification](https://github.com/open-telemetry/opentelemetry-specification)
- [API Specification](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/README.md)
- [SDK Specification](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/README.md)
"""

module OpenTelemetry

using Logging
using Reexport

@reexport using OpenTelemetryAPI
@reexport using OpenTelemetrySDK
@reexport using OpenTelemetryExporterOtlpProtoHttp
@reexport using OpenTelemetryExporterPrometheus

function __init__()
    if !OTEL_SDK_DISABLED()
        global_logger(OtelSimpleLogger())
        global_tracer_provider(TracerProvider())
        global_meter_provider(MeterProvider())
    end
end

end
