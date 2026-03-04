/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogType {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogType(this.wireValue);
  final String wireValue;

  static GoogleIamV1AuditLogConfigLogType fromValue(String value) {
    for (final item in GoogleIamV1AuditLogConfigLogType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleIamV1AuditLogConfigLogType value: $value',
    );
  }
}
