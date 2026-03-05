/// The log type that this config enables.
enum AuditLogConfigLogTypeNetworkconnectivityV1alpha1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeNetworkconnectivityV1alpha1(this.wireValue);
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

