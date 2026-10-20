import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
enum AccessConfigType implements pulumi.PulumiEnum<String> {
  directIpv6("DIRECT_IPV6"),
  oneToOneNat("ONE_TO_ONE_NAT");

  const AccessConfigType(this.wireValue);
  @override
  final String wireValue;

  static AccessConfigType fromValue(String value) {
    for (final item in AccessConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessConfigType value: $value');
  }
}
