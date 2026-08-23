/// Provisioning state of the Private Endpoint Connection.
enum EndPointProvisioningState {
  creating("Creating"),
  updating("Updating"),
  deleting("Deleting"),
  succeeded("Succeeded"),
  canceled("Canceled"),
  failed("Failed");

  const EndPointProvisioningState(this.wireValue);
  final String wireValue;

  static EndPointProvisioningState fromValue(String value) {
    for (final item in EndPointProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndPointProvisioningState value: $value');
  }
}
