enum PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha(
    this.wireValue,
  );
  final String wireValue;

  static PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha fromValue(
    String value,
  ) {
    for (final item
        in PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha value: $value',
    );
  }
}
