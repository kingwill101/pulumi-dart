/// Provisioning state of the Private Endpoint Connection.
enum EndPointProvisioningState {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const EndPointProvisioningState(this.value);
  final String value;

  static EndPointProvisioningState fromValue(String value) {
    for (final item in EndPointProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndPointProvisioningState value: $value');
  }
}

