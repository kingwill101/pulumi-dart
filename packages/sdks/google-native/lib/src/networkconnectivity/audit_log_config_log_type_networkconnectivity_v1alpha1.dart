import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeNetworkconnectivityV1alpha1 implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeNetworkconnectivityV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeNetworkconnectivityV1alpha1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeNetworkconnectivityV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeNetworkconnectivityV1alpha1 value: $value');
  }
}
