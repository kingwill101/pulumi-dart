import 'package:pulumi/pulumi.dart' as pulumi;

enum CompositeTypeStatusDeploymentmanagerV2beta implements pulumi.PulumiEnum<String> {
  unknownStatus("UNKNOWN_STATUS"),
  deprecated("DEPRECATED"),
  experimental("EXPERIMENTAL"),
  supported("SUPPORTED");

  const CompositeTypeStatusDeploymentmanagerV2beta(this.wireValue);
  @override
  final String wireValue;

  static CompositeTypeStatusDeploymentmanagerV2beta fromValue(String value) {
    for (final item in CompositeTypeStatusDeploymentmanagerV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositeTypeStatusDeploymentmanagerV2beta value: $value');
  }
}
