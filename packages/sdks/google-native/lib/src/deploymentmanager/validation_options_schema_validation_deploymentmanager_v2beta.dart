/// Customize how deployment manager will validate the resource against schema errors.
enum ValidationOptionsSchemaValidationDeploymentmanagerV2beta {
  unknown("UNKNOWN"),
  ignore("IGNORE"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsSchemaValidationDeploymentmanagerV2beta(this.wireValue);
  final String wireValue;

  static ValidationOptionsSchemaValidationDeploymentmanagerV2beta fromValue(String value) {
    for (final item in ValidationOptionsSchemaValidationDeploymentmanagerV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationOptionsSchemaValidationDeploymentmanagerV2beta value: $value');
  }
}
