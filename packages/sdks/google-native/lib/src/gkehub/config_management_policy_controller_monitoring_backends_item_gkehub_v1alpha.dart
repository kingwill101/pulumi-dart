import 'package:pulumi/pulumi.dart' as pulumi;

enum ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha implements pulumi.PulumiEnum<String> {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha(this.wireValue);
  @override
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
