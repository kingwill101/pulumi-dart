import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TCPHealthCheckProxyHeaderComputeV1 implements pulumi.PulumiEnum<String> {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TCPHealthCheckProxyHeaderComputeV1(this.wireValue);
  @override
  final String wireValue;

  static TCPHealthCheckProxyHeaderComputeV1 fromValue(String value) {
    for (final item in TCPHealthCheckProxyHeaderComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TCPHealthCheckProxyHeaderComputeV1 value: $value');
  }
}
