/// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
enum HealthCheckType {
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  invalid("INVALID"),
  ssl("SSL"),
  tcp("TCP"),
  udp("UDP");

  const HealthCheckType(this.wireValue);
  final String wireValue;

  static HealthCheckType fromValue(String value) {
    for (final item in HealthCheckType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthCheckType value: $value');
  }
}
