import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets provisioning state of the private endpoint connection
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  valueSucceeded("Succeeded"),
  valueDeleting("Deleting"),
  valueFailed("Failed"),
  valuePending("Pending");

  const ProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static ProvisioningState fromValue(String value) {
    for (final item in ProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningState value: $value');
  }
}
