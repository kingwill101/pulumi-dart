import 'package:pulumi/pulumi.dart' as pulumi;

/// Platform hosting this deployment.
enum DeploymentOccurrencePlatform implements pulumi.PulumiEnum<String> {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  gke("GKE"),
  flex("FLEX"),
  custom("CUSTOM");

  const DeploymentOccurrencePlatform(this.wireValue);
  @override
  final String wireValue;

  static DeploymentOccurrencePlatform fromValue(String value) {
    for (final item in DeploymentOccurrencePlatform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentOccurrencePlatform value: $value');
  }
}
