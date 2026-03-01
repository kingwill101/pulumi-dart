/// The outcome of the deployment.
enum DeploymentResult {
  valueSuccess("Success"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const DeploymentResult(this.value);
  final String value;

  static DeploymentResult fromValue(String value) {
    for (final item in DeploymentResult.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentResult value: $value');
  }
}

