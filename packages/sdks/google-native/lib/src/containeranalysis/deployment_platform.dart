/// Platform hosting this deployment.
enum DeploymentPlatform {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  gke("GKE"),
  flex("FLEX"),
  custom("CUSTOM");

  const DeploymentPlatform(this.wireValue);
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
