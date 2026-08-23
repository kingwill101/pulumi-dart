enum PolicyControllerMonitoringConfigBackendsItemGkehubV1beta {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const PolicyControllerMonitoringConfigBackendsItemGkehubV1beta(this.wireValue);
  final String wireValue;

  static PolicyControllerMonitoringConfigBackendsItemGkehubV1beta fromValue(String value) {
    for (final item in PolicyControllerMonitoringConfigBackendsItemGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyControllerMonitoringConfigBackendsItemGkehubV1beta value: $value');
  }
}
