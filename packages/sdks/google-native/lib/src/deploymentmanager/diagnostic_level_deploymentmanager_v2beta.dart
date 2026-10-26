import 'package:pulumi/pulumi.dart' as pulumi;

/// Level to record this diagnostic.
enum DiagnosticLevelDeploymentmanagerV2beta implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  information("INFORMATION"),
  warning("WARNING"),
  error("ERROR");

  const DiagnosticLevelDeploymentmanagerV2beta(this.wireValue);
  @override
  final String wireValue;

  static DiagnosticLevelDeploymentmanagerV2beta fromValue(String value) {
    for (final item in DiagnosticLevelDeploymentmanagerV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticLevelDeploymentmanagerV2beta value: $value');
  }
}
