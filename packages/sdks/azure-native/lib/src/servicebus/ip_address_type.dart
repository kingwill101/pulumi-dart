import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP address type for the namespace. Determines whether the namespace supports IPv4 only or both IPv4 and IPv6 (dual stack).
enum IpAddressType implements pulumi.PulumiEnum<String> {
  iPv4("IPv4"),
  dualStack("DualStack");

  const IpAddressType(this.wireValue);
  @override
  final String wireValue;

  static IpAddressType fromValue(String value) {
    for (final item in IpAddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAddressType value: $value');
  }
}
