/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressType {
  dnsForwarding("DNS_FORWARDING"),
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressType(this.wireValue);
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
