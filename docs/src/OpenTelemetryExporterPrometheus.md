"""
# Prometheus Exporter Documentation

This document describes the Julia implementation of the Prometheus exporter.
The implementation follows the [Prometheus Exporter Specification](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/metrics/sdk_exporters/prometheus.md)
and provides the functionality to export metrics data in Prometheus format.

The Prometheus exporter is useful for integrating with existing Prometheus monitoring systems.

## Related Specifications
- [Prometheus Exporter](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/metrics/sdk_exporters/prometheus.md)
- [Prometheus Data Model](https://prometheus.io/docs/concepts/data_model/)
"""

# OpenTelemetryExporterPrometheus

In this package, only one [`AbstractExporter`](@ref) is exported: the [`PrometheusExporter`](@ref). With this exporter, one can use the [Prometheus](https://prometheus.io/) to view the [`Metric`](@ref)s.

```@autodocs
Modules = [OpenTelemetryExporterPrometheus]
Private = false
```