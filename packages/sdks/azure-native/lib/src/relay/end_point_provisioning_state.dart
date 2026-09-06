import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning state of the Private Endpoint Connection.
enum EndPointProvisioningState implements pulumi.PulumiEnum<String> {
  creating("Creating"),
  updating("Updating"),
  deleting("Deleting"),
  succeeded("Succeeded"),
  canceled("Canceled"),
  failed("Failed");

  const EndPointProvisioningState(this.wireValue);
  @override
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
