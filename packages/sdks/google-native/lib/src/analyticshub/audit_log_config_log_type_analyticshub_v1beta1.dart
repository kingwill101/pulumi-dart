/// The log type that this config enables.
enum AuditLogConfigLogTypeAnalyticshubV1beta1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeAnalyticshubV1beta1(this.wireValue);
  final String wireValue;

  static AuditLogConfigLogTypeAnalyticshubV1beta1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeAnalyticshubV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeAnalyticshubV1beta1 value: $value');
  }
}
