/// The outcome of the deployment.
enum DeploymentResult {
  valueSuccess("Success"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const DeploymentResult(this.wireValue);
  final String wireValue;

  static DeploymentResult fromValue(String value) {
    for (final item in DeploymentResult.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentResult value: $value');
  }
}

