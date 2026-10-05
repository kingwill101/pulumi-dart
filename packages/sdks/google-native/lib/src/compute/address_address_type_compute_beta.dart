import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum AddressAddressTypeComputeBeta implements pulumi.PulumiEnum<String> {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const AddressAddressTypeComputeBeta(this.wireValue);
  @override
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
