import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPHealthCheckProxyHeaderComputeBeta implements pulumi.PulumiEnum<String> {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPHealthCheckProxyHeaderComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static HTTPHealthCheckProxyHeaderComputeBeta fromValue(String value) {
    for (final item in HTTPHealthCheckProxyHeaderComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPHealthCheckProxyHeaderComputeBeta value: $value');
  }
}
