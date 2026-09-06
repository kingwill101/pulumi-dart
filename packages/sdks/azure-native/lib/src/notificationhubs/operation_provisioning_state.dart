import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines values for OperationProvisioningState.
enum OperationProvisioningState implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  inProgress("InProgress"),
  succeeded("Succeeded"),
  failed("Failed"),
  canceled("Canceled"),
  pending("Pending"),
  disabled("Disabled");

  const OperationProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static OperationProvisioningState fromValue(String value) {
    for (final item in OperationProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationProvisioningState value: $value');
  }
}
