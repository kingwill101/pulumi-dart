import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify what to do with extra properties when executing a request.
enum ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  include("INCLUDE"),
  ignore("IGNORE"),
  includeWithWarnings("INCLUDE_WITH_WARNINGS"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta(this.wireValue);
  @override
  final String wireValue;

  static ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta fromValue(String value) {
    for (final item in ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta value: $value');
  }
}
