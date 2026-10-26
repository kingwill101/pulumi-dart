import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of the Address Group. Possible values are "IPv4" or "IPV6".
enum OrganizationAddressGroupType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv6("IPV6");

  const OrganizationAddressGroupType(this.wireValue);
  @override
  final String wireValue;

  static OrganizationAddressGroupType fromValue(String value) {
    for (final item in OrganizationAddressGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationAddressGroupType value: $value');
  }
}
