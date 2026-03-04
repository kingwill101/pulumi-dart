/// The location where this mapping applies.
enum InputMappingLocationDeploymentmanagerV2beta {
  unknown("UNKNOWN"),
  path("PATH"),
  query("QUERY"),
  body("BODY"),
  header("HEADER");

  const InputMappingLocationDeploymentmanagerV2beta(this.wireValue);
  final String wireValue;

  static InputMappingLocationDeploymentmanagerV2beta fromValue(String value) {
    for (final item in InputMappingLocationDeploymentmanagerV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InputMappingLocationDeploymentmanagerV2beta value: $value',
    );
  }
}
