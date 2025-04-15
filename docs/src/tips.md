"""
# OpenTelemetry.jl Tips and Best Practices

This document provides tips and best practices for using OpenTelemetry.jl effectively.
The recommendations are based on the [OpenTelemetry Best Practices](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/best-practices.md)
and practical experience with the Julia implementation.

## Related Resources
- [OpenTelemetry Best Practices](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/best-practices.md)
- [Instrumentation Best Practices](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/library-guidelines.md)
- [Performance Best Practices](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/performance.md)
"""

# Tips for Developers

## Instrument a Package

If you have write permission to the package, you can add the dependency of `OpenTelemetryAPI` and modify the code as you wish. Otherwise, you need to write an independent instrumentation package. Here are some general conventions.

1. Each instrumentation package should implement the `init(;tracer_provider=global_tracer_provider(), meter_provider=global_meter_provider())` function. Note that this function shouldn't be exported to avoid confliction. In the module `__init__()` function, call `init()` to instrument the target library instantly.
1. The name of [`Meter`](@ref) should have at least have the module and its parent modules' names as the prefix. Usually people use `.` to connect different parts.
