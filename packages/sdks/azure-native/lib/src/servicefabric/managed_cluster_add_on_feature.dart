/// Available cluster add-on features
enum ManagedClusterAddOnFeature {
  valueDnsService("DnsService"),
  valueBackupRestoreService("BackupRestoreService"),
  valueResourceMonitorService("ResourceMonitorService");

  const ManagedClusterAddOnFeature(this.wireValue);
  final String wireValue;

  static ManagedClusterAddOnFeature fromValue(String value) {
    for (final item in ManagedClusterAddOnFeature.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedClusterAddOnFeature value: $value');
  }
}

