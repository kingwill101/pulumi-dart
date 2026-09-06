import 'package:pulumi/pulumi.dart' as pulumi;

/// The DB scale method.
enum SAPDatabaseScaleMethod implements pulumi.PulumiEnum<String> {
  scaleUp("ScaleUp");

  const SAPDatabaseScaleMethod(this.wireValue);
  @override
  final String wireValue;

  static SAPDatabaseScaleMethod fromValue(String value) {
    for (final item in SAPDatabaseScaleMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPDatabaseScaleMethod value: $value');
  }
}
