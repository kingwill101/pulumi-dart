enum ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha(this.wireValue);
  final String wireValue;

  static ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha fromValue(String value) {
    for (final item in ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha value: $value');
  }
}
