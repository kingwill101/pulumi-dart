/// Available cluster add-on features
enum ManagedClusterAddOnFeature {
  valueDnsService("DnsService"),
  valueBackupRestoreService("BackupRestoreService"),
  valueResourceMonitorService("ResourceMonitorService");

  const ManagedClusterAddOnFeature(this.value);
  final String value;

  static ManagedClusterAddOnFeature fromValue(String value) {
    for (final item in ManagedClusterAddOnFeature.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedClusterAddOnFeature value: $value');
  }
}

