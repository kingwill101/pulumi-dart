enum ConfigManagementPolicyControllerMonitoringBackendsItem {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const ConfigManagementPolicyControllerMonitoringBackendsItem(this.wireValue);
  final String wireValue;

  static ConfigManagementPolicyControllerMonitoringBackendsItem fromValue(
    String value,
  ) {
    for (final item
        in ConfigManagementPolicyControllerMonitoringBackendsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ConfigManagementPolicyControllerMonitoringBackendsItem value: $value',
    );
  }
}
