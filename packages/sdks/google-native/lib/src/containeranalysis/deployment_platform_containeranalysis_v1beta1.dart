/// Platform hosting this deployment.
enum DeploymentPlatformContaineranalysisV1beta1 {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  gke("GKE"),
  flex("FLEX"),
  custom("CUSTOM");

  const DeploymentPlatformContaineranalysisV1beta1(this.value);
  final String value;

  static DeploymentPlatformContaineranalysisV1beta1 fromValue(String value) {
    for (final item in DeploymentPlatformContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentPlatformContaineranalysisV1beta1 value: $value');
  }
}

