import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning state of the console.
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueAccepted("Accepted"),
  valuePending("Pending"),
  valueUpdating("Updating"),
  valueCreating("Creating"),
  valueRepairing("Repairing"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueSucceeded("Succeeded");

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
