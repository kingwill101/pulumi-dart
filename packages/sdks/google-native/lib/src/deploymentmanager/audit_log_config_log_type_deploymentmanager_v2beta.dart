/// The log type that this config enables.
enum AuditLogConfigLogTypeDeploymentmanagerV2beta {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDeploymentmanagerV2beta(this.wireValue);
  final String wireValue;

  static AuditLogConfigLogTypeDeploymentmanagerV2beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDeploymentmanagerV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeDeploymentmanagerV2beta value: $value');
  }
}
