import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum AddressAddressType implements pulumi.PulumiEnum<String> {
  dnsForwarding("DNS_FORWARDING"),
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const AddressAddressType(this.wireValue);
  @override
  final String wireValue;

  static AddressAddressType fromValue(String value) {
    for (final item in AddressAddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressAddressType value: $value');
  }
}
