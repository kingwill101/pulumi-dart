/// Required. The type of the Address Group. Possible values are "IPv4" or "IPV6".
enum AddressGroupTypeNetworksecurityV1beta1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv6("IPV6");

  const AddressGroupTypeNetworksecurityV1beta1(this.wireValue);
  final String wireValue;

  static AddressGroupTypeNetworksecurityV1beta1 fromValue(String value) {
    for (final item in AddressGroupTypeNetworksecurityV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressGroupTypeNetworksecurityV1beta1 value: $value');
  }
}
