import 'package:pulumi/pulumi.dart' as pulumi;

/// IP version of this interface.
enum RouterInterfaceIpVersion implements pulumi.PulumiEnum<String> {
  ipv4("IPV4"),
  ipv6("IPV6");

  const RouterInterfaceIpVersion(this.wireValue);
  @override
  final String wireValue;

  static RouterInterfaceIpVersion fromValue(String value) {
    for (final item in RouterInterfaceIpVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterInterfaceIpVersion value: $value');
  }
}
