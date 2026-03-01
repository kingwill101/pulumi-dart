/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressType {
  dnsForwarding("DNS_FORWARDING"),
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressType(this.value);
  final String value;

  static GlobalAddressAddressType fromValue(String value) {
    for (final item in GlobalAddressAddressType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressAddressType value: $value');
  }
}

