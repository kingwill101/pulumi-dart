/// The log type that this config enables.
enum AuditLogConfigLogTypeWorkstationsV1beta {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeWorkstationsV1beta(this.value);
  final String value;

  static AuditLogConfigLogTypeWorkstationsV1beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeWorkstationsV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeWorkstationsV1beta value: $value');
  }
}

