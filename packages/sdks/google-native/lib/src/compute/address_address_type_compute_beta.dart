/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum AddressAddressTypeComputeBeta {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const AddressAddressTypeComputeBeta(this.wireValue);
  final String wireValue;

  static AddressAddressTypeComputeBeta fromValue(String value) {
    for (final item in AddressAddressTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressAddressTypeComputeBeta value: $value');
  }
}
