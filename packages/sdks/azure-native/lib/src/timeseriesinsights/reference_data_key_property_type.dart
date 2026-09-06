import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the key property.
enum ReferenceDataKeyPropertyType implements pulumi.PulumiEnum<String> {
  valueString("String"),
  valueDouble("Double"),
  valueBool("Bool"),
  valueDateTime("DateTime");

  const ReferenceDataKeyPropertyType(this.wireValue);
  @override
  final String wireValue;

  static ReferenceDataKeyPropertyType fromValue(String value) {
    for (final item in ReferenceDataKeyPropertyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReferenceDataKeyPropertyType value: $value');
  }
}
