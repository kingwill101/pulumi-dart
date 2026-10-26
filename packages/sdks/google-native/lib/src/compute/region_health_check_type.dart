import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
enum RegionHealthCheckType implements pulumi.PulumiEnum<String> {
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  invalid("INVALID"),
  ssl("SSL"),
  tcp("TCP"),
  udp("UDP");

  const RegionHealthCheckType(this.wireValue);
  @override
  final String wireValue;

  static RegionHealthCheckType fromValue(String value) {
    for (final item in RegionHealthCheckType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionHealthCheckType value: $value');
  }
}
