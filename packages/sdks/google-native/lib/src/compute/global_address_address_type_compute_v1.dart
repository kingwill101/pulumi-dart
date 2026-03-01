/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressTypeComputeV1 {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressTypeComputeV1(this.value);
  final String value;

  static GlobalAddressAddressTypeComputeV1 fromValue(String value) {
    for (final item in GlobalAddressAddressTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressAddressTypeComputeV1 value: $value');
  }
}

