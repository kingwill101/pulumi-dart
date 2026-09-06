import 'package:pulumi/pulumi.dart' as pulumi;

/// The provisioning state of the resource.
///
/// Pending - Provisioning pending.
/// Failed - Provisioning failed.
/// Succeeded - Successful provisioning.
/// Canceled - Provisioning canceled.
/// PendingDeletion - Deletion pending.
/// DeletionSuccess - Deletion successful.
/// DeletionFailure - Deletion failure.
enum DevOpsProvisioningState implements pulumi.PulumiEnum<String> {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valuePending("Pending"),
  valuePendingDeletion("PendingDeletion"),
  valueDeletionSuccess("DeletionSuccess"),
  valueDeletionFailure("DeletionFailure");

  const DevOpsProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static DevOpsProvisioningState fromValue(String value) {
    for (final item in DevOpsProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevOpsProvisioningState value: $value');
  }
}
