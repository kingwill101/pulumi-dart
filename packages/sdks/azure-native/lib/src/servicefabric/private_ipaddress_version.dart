import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the IP configuration's private IP is IPv4 or IPv6. Default is IPv4.
enum PrivateIPAddressVersion implements pulumi.PulumiEnum<String> {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const PrivateIPAddressVersion(this.wireValue);
  @override
  final String wireValue;

  static PrivateIPAddressVersion fromValue(String value) {
    for (final item in PrivateIPAddressVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateIPAddressVersion value: $value');
  }
}
