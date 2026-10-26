import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressTypeComputeBeta implements pulumi.PulumiEnum<String> {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static GlobalAddressAddressTypeComputeBeta fromValue(String value) {
    for (final item in GlobalAddressAddressTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressAddressTypeComputeBeta value: $value');
  }
}
