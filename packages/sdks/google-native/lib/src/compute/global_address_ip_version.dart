import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum GlobalAddressIpVersion implements pulumi.PulumiEnum<String> {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalAddressIpVersion(this.wireValue);
  @override
  final String wireValue;

  static GlobalAddressIpVersion fromValue(String value) {
    for (final item in GlobalAddressIpVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpVersion value: $value');
  }
}
