/// The log type that this config enables.
enum AuditLogConfigLogTypeNetworkservicesV1beta1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeNetworkservicesV1beta1(this.value);
  final String value;

  static AuditLogConfigLogTypeNetworkservicesV1beta1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeNetworkservicesV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeNetworkservicesV1beta1 value: $value');
  }
}

