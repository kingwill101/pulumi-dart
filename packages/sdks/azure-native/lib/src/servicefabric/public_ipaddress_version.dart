import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the IP configuration's public IP is IPv4 or IPv6. Default is IPv4.
enum PublicIPAddressVersion implements pulumi.PulumiEnum<String> {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const PublicIPAddressVersion(this.wireValue);
  @override
  final String wireValue;

  static PublicIPAddressVersion fromValue(String value) {
    for (final item in PublicIPAddressVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressVersion value: $value');
  }
}
