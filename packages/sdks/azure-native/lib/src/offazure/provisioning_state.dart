import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the last operation.
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  created("Created"),
  updated("Updated"),
  running("Running"),
  completed("Completed"),
  failed("Failed"),
  succeeded("Succeeded"),
  canceled("Canceled");

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
