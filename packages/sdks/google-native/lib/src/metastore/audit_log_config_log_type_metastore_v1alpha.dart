/// The log type that this config enables.
enum AuditLogConfigLogTypeMetastoreV1alpha {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeMetastoreV1alpha(this.wireValue);
  final String wireValue;

  static AuditLogConfigLogTypeMetastoreV1alpha fromValue(String value) {
    for (final item in AuditLogConfigLogTypeMetastoreV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuditLogConfigLogTypeMetastoreV1alpha value: $value',
    );
  }
}
