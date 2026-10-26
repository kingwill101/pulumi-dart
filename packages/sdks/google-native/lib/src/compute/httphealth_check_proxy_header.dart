import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPHealthCheckProxyHeader implements pulumi.PulumiEnum<String> {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPHealthCheckProxyHeader(this.wireValue);
  @override
  final String wireValue;

  static HTTPHealthCheckProxyHeader fromValue(String value) {
    for (final item in HTTPHealthCheckProxyHeader.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPHealthCheckProxyHeader value: $value');
  }
}
