/// Required. The type of the Address Group. Possible values are "IPv4" or "IPV6".
enum OrganizationAddressGroupTypeNetworksecurityV1beta1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv6("IPV6");

  const OrganizationAddressGroupTypeNetworksecurityV1beta1(this.wireValue);
  final String wireValue;

  static OrganizationAddressGroupTypeNetworksecurityV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in OrganizationAddressGroupTypeNetworksecurityV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OrganizationAddressGroupTypeNetworksecurityV1beta1 value: $value',
    );
  }
}
