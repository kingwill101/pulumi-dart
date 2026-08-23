/// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
enum HealthCheckTypeComputeBeta {
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  invalid("INVALID"),
  ssl("SSL"),
  tcp("TCP");

  const HealthCheckTypeComputeBeta(this.wireValue);
  final String wireValue;

  static HealthCheckTypeComputeBeta fromValue(String value) {
    for (final item in HealthCheckTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthCheckTypeComputeBeta value: $value');
  }
}
