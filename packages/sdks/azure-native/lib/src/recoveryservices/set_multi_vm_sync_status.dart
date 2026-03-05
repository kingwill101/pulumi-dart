/// A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
enum SetMultiVmSyncStatus {
  valueEnable("Enable"),
  valueDisable("Disable");

  const SetMultiVmSyncStatus(this.wireValue);
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

