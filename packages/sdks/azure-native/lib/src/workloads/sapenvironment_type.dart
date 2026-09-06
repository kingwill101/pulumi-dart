import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the environment type - Production/Non Production.
enum SAPEnvironmentType implements pulumi.PulumiEnum<String> {
  nonProd("NonProd"),
  prod("Prod");

  const SAPEnvironmentType(this.wireValue);
  @override
  final String wireValue;

  static SAPEnvironmentType fromValue(String value) {
    for (final item in SAPEnvironmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPEnvironmentType value: $value');
  }
}
