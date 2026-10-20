import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetSslProxyProxyHeaderComputeBeta implements pulumi.PulumiEnum<String> {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetSslProxyProxyHeaderComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static TargetSslProxyProxyHeaderComputeBeta fromValue(String value) {
    for (final item in TargetSslProxyProxyHeaderComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetSslProxyProxyHeaderComputeBeta value: $value');
  }
}
