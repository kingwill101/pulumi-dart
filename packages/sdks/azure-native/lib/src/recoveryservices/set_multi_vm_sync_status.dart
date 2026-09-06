import 'package:pulumi/pulumi.dart' as pulumi;

/// A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
enum SetMultiVmSyncStatus implements pulumi.PulumiEnum<String> {
  valueEnable("Enable"),
  valueDisable("Disable");

  const SetMultiVmSyncStatus(this.wireValue);
  @override
  final String wireValue;

  static SetMultiVmSyncStatus fromValue(String value) {
    for (final item in SetMultiVmSyncStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SetMultiVmSyncStatus value: $value');
  }
}
