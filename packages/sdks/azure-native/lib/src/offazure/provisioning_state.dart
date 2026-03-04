/// The status of the last operation.
enum ProvisioningState {
  created("Created"),
  updated("Updated"),
  running("Running"),
  completed("Completed"),
  failed("Failed"),
  succeeded("Succeeded"),
  canceled("Canceled");

  const ProvisioningState(this.wireValue);
  final String wireValue;

  static ProvisioningState fromValue(String value) {
    for (final item in ProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningState value: $value');
  }
}
