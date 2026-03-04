/// State of Private Endpoint Connection.
enum PrivateEndpointConnectionProvisioningState {
  unknown("Unknown"),
  succeeded("Succeeded"),
  creating("Creating"),
  updating("Updating"),
  updatingByProxy("UpdatingByProxy"),
  deleting("Deleting"),
  deletingByProxy("DeletingByProxy"),
  deleted("Deleted");

  const PrivateEndpointConnectionProvisioningState(this.wireValue);
  final String wireValue;

  static PrivateEndpointConnectionProvisioningState fromValue(String value) {
    for (final item in PrivateEndpointConnectionProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PrivateEndpointConnectionProvisioningState value: $value',
    );
  }
}
