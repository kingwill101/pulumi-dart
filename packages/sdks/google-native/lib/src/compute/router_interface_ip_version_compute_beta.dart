import 'package:pulumi/pulumi.dart' as pulumi;

/// IP version of this interface.
enum RouterInterfaceIpVersionComputeBeta implements pulumi.PulumiEnum<String> {
  ipv4("IPV4"),
  ipv6("IPV6");

  const RouterInterfaceIpVersionComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RouterInterfaceIpVersionComputeBeta fromValue(String value) {
    for (final item in RouterInterfaceIpVersionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterInterfaceIpVersionComputeBeta value: $value');
  }
}
