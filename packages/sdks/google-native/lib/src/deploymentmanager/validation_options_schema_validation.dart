/// Customize how deployment manager will validate the resource against schema errors.
enum ValidationOptionsSchemaValidation {
  unknown("UNKNOWN"),
  ignore("IGNORE"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsSchemaValidation(this.value);
  final String value;

  static ValidationOptionsSchemaValidation fromValue(String value) {
    for (final item in ValidationOptionsSchemaValidation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationOptionsSchemaValidation value: $value');
  }
}

