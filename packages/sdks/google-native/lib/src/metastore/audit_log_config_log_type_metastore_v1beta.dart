/// The log type that this config enables.
enum AuditLogConfigLogTypeMetastoreV1beta {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeMetastoreV1beta(this.wireValue);
  final String wireValue;

  static AuditLogConfigLogTypeMetastoreV1beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuditLogConfigLogTypeMetastoreV1beta value: $value',
    );
  }
}
