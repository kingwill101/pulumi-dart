import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of the Address Group. Possible values are "IPv4" or "IPV6".
enum AddressGroupType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv6("IPV6");

  const AddressGroupType(this.wireValue);
  @override
  final String wireValue;

  static AddressGroupType fromValue(String value) {
    for (final item in AddressGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressGroupType value: $value');
  }
}
