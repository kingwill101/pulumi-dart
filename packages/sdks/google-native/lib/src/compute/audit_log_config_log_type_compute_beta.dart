/// The log type that this config enables.
enum AuditLogConfigLogTypeComputeBeta {
  adminRead("ADMIN_READ"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED");

  const AuditLogConfigLogTypeComputeBeta(this.wireValue);
  final String wireValue;

  static AuditLogConfigLogTypeComputeBeta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuditLogConfigLogTypeComputeBeta value: $value',
    );
  }
}
