/// A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
enum SetMultiVmSyncStatus {
  valueEnable("Enable"),
  valueDisable("Disable");

  const SetMultiVmSyncStatus(this.value);
  final String value;

  static SetMultiVmSyncStatus fromValue(String value) {
    for (final item in SetMultiVmSyncStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SetMultiVmSyncStatus value: $value');
  }
}

