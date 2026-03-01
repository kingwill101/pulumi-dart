/// The cluster provisioning state.
enum ProvisioningState {
  valueAdminUpdating("AdminUpdating"),
  valueCanceled("Canceled"),
  valueCreating("Creating"),
  valueDeleting("Deleting"),
  valueFailed("Failed"),
  valueSucceeded("Succeeded"),
  valueUpdating("Updating");

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

