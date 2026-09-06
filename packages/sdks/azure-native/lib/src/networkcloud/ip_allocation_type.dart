import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the IP address allocation, defaulted to "DualStack".
enum IpAllocationType implements pulumi.PulumiEnum<String> {
  valueIPV4("IPV4"),
  valueIPV6("IPV6"),
  valueDualStack("DualStack");

  const IpAllocationType(this.wireValue);
  @override
  final String wireValue;

  static IpAllocationType fromValue(String value) {
    for (final item in IpAllocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationType value: $value');
  }
}
