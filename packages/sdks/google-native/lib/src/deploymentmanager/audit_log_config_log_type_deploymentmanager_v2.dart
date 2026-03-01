/// The log type that this config enables.
enum AuditLogConfigLogTypeDeploymentmanagerV2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDeploymentmanagerV2(this.value);
  final String value;

  static AuditLogConfigLogTypeDeploymentmanagerV2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDeploymentmanagerV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeDeploymentmanagerV2 value: $value');
  }
}

