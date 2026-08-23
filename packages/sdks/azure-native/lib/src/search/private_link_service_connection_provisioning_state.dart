/// The provisioning state of the private link service connection. Valid values are Updating, Deleting, Failed, Succeeded, Incomplete, or Canceled.
enum PrivateLinkServiceConnectionProvisioningState {
  updating("Updating"),
  deleting("Deleting"),
  failed("Failed"),
  succeeded("Succeeded"),
  incomplete("Incomplete"),
  canceled("Canceled");

  const PrivateLinkServiceConnectionProvisioningState(this.wireValue);
  final String wireValue;

  static PrivateLinkServiceConnectionProvisioningState fromValue(String value) {
    for (final item in PrivateLinkServiceConnectionProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkServiceConnectionProvisioningState value: $value');
  }
}
