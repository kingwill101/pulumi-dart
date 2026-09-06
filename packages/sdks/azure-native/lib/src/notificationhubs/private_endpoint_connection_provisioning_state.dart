import 'package:pulumi/pulumi.dart' as pulumi;

/// State of Private Endpoint Connection.
enum PrivateEndpointConnectionProvisioningState implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  succeeded("Succeeded"),
  creating("Creating"),
  updating("Updating"),
  updatingByProxy("UpdatingByProxy"),
  deleting("Deleting"),
  deletingByProxy("DeletingByProxy"),
  deleted("Deleted");

  const PrivateEndpointConnectionProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static PrivateEndpointConnectionProvisioningState fromValue(String value) {
    for (final item in PrivateEndpointConnectionProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointConnectionProvisioningState value: $value');
  }
}
