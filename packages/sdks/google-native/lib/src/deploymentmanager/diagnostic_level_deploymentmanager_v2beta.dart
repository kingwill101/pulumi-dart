/// Level to record this diagnostic.
enum DiagnosticLevelDeploymentmanagerV2beta {
  unknown("UNKNOWN"),
  information("INFORMATION"),
  warning("WARNING"),
  error("ERROR");

  const DiagnosticLevelDeploymentmanagerV2beta(this.wireValue);
  final String wireValue;

  static DiagnosticLevelDeploymentmanagerV2beta fromValue(String value) {
    for (final item in DiagnosticLevelDeploymentmanagerV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DiagnosticLevelDeploymentmanagerV2beta value: $value',
    );
  }
}
