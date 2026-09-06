import 'package:pulumi/pulumi.dart' as pulumi;

/// Emission format type.
enum EmissionType implements pulumi.PulumiEnum<String> {
  iPFIX("IPFIX");

  const EmissionType(this.wireValue);
  @override
  final String wireValue;

  static EmissionType fromValue(String value) {
    for (final item in EmissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EmissionType value: $value');
  }
}
