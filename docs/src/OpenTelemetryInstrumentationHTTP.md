"""
# HTTP Instrumentation Documentation

This document describes the HTTP instrumentation functionality for OpenTelemetry.jl.
The implementation follows the [HTTP Semantic Conventions](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/trace/semantic_conventions/http.md)
and provides functionality for instrumenting HTTP clients and servers.

HTTP instrumentation automatically creates spans for HTTP requests and responses,
capturing important attributes and context propagation.

## Related Specifications
- [HTTP Semantic Conventions](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/trace/semantic_conventions/http.md)
- [HTTP Metrics](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/metrics/semantic_conventions/http-metrics.md)
- [Trace Context Propagation](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/context/api-propagators.md)
"""

# OpenTelemetryInstrumentationHTTP

```@autodocs
Modules = [OpenTelemetryInstrumentationHTTP]
```