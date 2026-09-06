import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the SAP Product type.
enum SAPProductType implements pulumi.PulumiEnum<String> {
  eCC("ECC"),
  s4HANA("S4HANA"),
  other("Other");

  const SAPProductType(this.wireValue);
  @override
  final String wireValue;

  static SAPProductType fromValue(String value) {
    for (final item in SAPProductType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPProductType value: $value');
  }
}
