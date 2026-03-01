/// Gets or sets provisioning state of the private endpoint connection
enum ProvisioningState {
  valueSucceeded("Succeeded"),
  valueDeleting("Deleting"),
  valueFailed("Failed"),
  valuePending("Pending");

  const ProvisioningState(this.value);
  final String value;

  static ProvisioningState fromValue(String value) {
    for (final item in ProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningState value: $value');
  }
}

