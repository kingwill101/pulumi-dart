enum PolicyControllerMonitoringConfigBackendsItem {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const PolicyControllerMonitoringConfigBackendsItem(this.value);
  final String value;

  static PolicyControllerMonitoringConfigBackendsItem fromValue(String value) {
    for (final item in PolicyControllerMonitoringConfigBackendsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyControllerMonitoringConfigBackendsItem value: $value');
  }
}

