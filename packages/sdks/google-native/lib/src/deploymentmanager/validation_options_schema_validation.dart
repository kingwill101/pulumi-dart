import 'package:pulumi/pulumi.dart' as pulumi;

/// Customize how deployment manager will validate the resource against schema errors.
enum ValidationOptionsSchemaValidation implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  ignore("IGNORE"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsSchemaValidation(this.wireValue);
  @override
  final String wireValue;

  static ValidationOptionsSchemaValidation fromValue(String value) {
    for (final item in ValidationOptionsSchemaValidation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationOptionsSchemaValidation value: $value');
  }
}
