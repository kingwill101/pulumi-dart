/// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
enum HealthCheckTypeComputeV1 {
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  invalid("INVALID"),
  ssl("SSL"),
  tcp("TCP");

  const HealthCheckTypeComputeV1(this.wireValue);
  final String wireValue;

  static HealthCheckTypeComputeV1 fromValue(String value) {
    for (final item in HealthCheckTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthCheckTypeComputeV1 value: $value');
  }
}

