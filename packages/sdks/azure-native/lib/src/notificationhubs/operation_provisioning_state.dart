/// Defines values for OperationProvisioningState.
enum OperationProvisioningState {
  unknown("Unknown"),
  inProgress("InProgress"),
  succeeded("Succeeded"),
  failed("Failed"),
  canceled("Canceled"),
  pending("Pending"),
  disabled("Disabled");

  const OperationProvisioningState(this.wireValue);
  final String wireValue;

  static OperationProvisioningState fromValue(String value) {
    for (final item in OperationProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationProvisioningState value: $value');
  }
}
