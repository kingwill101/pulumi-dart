/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum AddressAddressType {
  dnsForwarding("DNS_FORWARDING"),
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const AddressAddressType(this.value);
  final String value;

  static AddressAddressType fromValue(String value) {
    for (final item in AddressAddressType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressAddressType value: $value');
  }
}

