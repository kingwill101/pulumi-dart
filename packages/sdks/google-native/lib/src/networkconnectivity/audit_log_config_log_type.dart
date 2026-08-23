/// The log type that this config enables.
enum AuditLogConfigLogType {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType(this.wireValue);
  final String wireValue;

  static AuditLogConfigLogType fromValue(String value) {
    for (final item in AuditLogConfigLogType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType value: $value');
  }
}
