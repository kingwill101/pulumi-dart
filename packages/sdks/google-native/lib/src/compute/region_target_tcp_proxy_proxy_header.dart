import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum RegionTargetTcpProxyProxyHeader implements pulumi.PulumiEnum<String> {
  none("NONE"),
  proxyV1("PROXY_V1");

  const RegionTargetTcpProxyProxyHeader(this.wireValue);
  @override
  final String wireValue;

  static RegionTargetTcpProxyProxyHeader fromValue(String value) {
    for (final item in RegionTargetTcpProxyProxyHeader.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionTargetTcpProxyProxyHeader value: $value');
  }
}
