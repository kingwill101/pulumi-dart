import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the property.
enum PropertyType implements pulumi.PulumiEnum<String> {
  valueString("String");

  const PropertyType(this.wireValue);
  @override
  final String wireValue;

  static PropertyType fromValue(String value) {
    for (final item in PropertyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropertyType value: $value');
  }
}
