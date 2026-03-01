/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum AddressAddressTypeComputeBeta {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const AddressAddressTypeComputeBeta(this.value);
  final String value;

  static AddressAddressTypeComputeBeta fromValue(String value) {
    for (final item in AddressAddressTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressAddressTypeComputeBeta value: $value');
  }
}

