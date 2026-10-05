import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressType implements pulumi.PulumiEnum<String> {
  dnsForwarding("DNS_FORWARDING"),
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressType(this.wireValue);
  @override
  final String wireValue;

  static GlobalAddressAddressType fromValue(String value) {
    for (final item in GlobalAddressAddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressAddressType value: $value');
  }
}
