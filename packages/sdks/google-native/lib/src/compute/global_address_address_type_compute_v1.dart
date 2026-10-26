import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressTypeComputeV1 implements pulumi.PulumiEnum<String> {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static GlobalAddressAddressTypeComputeV1 fromValue(String value) {
    for (final item in GlobalAddressAddressTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressAddressTypeComputeV1 value: $value');
  }
}
