import 'package:pulumi/pulumi.dart' as pulumi;

/// Platform hosting this deployment.
enum DeploymentPlatform implements pulumi.PulumiEnum<String> {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  gke("GKE"),
  flex("FLEX"),
  custom("CUSTOM");

  const DeploymentPlatform(this.wireValue);
  @override
  final String wireValue;

  static DeploymentPlatform fromValue(String value) {
    for (final item in DeploymentPlatform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentPlatform value: $value');
  }
}
