/// Current status of the deployment.
enum DeploymentState {
  valueInProgress("In_Progress"),
  valueCompleted("Completed"),
  valueQueued("Queued"),
  valueCanceling("Canceling");

  const DeploymentState(this.wireValue);
  final String wireValue;

  static DeploymentState fromValue(String value) {
    for (final item in DeploymentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentState value: $value');
  }
}

