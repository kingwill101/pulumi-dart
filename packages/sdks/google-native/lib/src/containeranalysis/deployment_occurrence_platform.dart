/// Platform hosting this deployment.
enum DeploymentOccurrencePlatform {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  gke("GKE"),
  flex("FLEX"),
  custom("CUSTOM");

  const DeploymentOccurrencePlatform(this.wireValue);
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
