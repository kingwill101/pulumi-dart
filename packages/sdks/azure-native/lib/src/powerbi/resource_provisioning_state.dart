/// Provisioning state of the Private Endpoint Connection.
enum ResourceProvisioningState {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const ResourceProvisioningState(this.value);
  final String value;

  static ResourceProvisioningState fromValue(String value) {
    for (final item in ResourceProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProvisioningState value: $value');
  }
}

