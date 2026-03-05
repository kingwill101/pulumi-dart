/// Status while fetching the last deployment.
enum DeploymentFetchStatus {
  valueSuccess("Success"),
  valueUnauthorized("Unauthorized"),
  valueNotFound("NotFound");

  const DeploymentFetchStatus(this.wireValue);
  final String wireValue;

  static DeploymentFetchStatus fromValue(String value) {
    for (final item in DeploymentFetchStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentFetchStatus value: $value');
  }
}

