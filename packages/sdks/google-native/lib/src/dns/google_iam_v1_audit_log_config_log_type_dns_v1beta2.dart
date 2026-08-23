/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogTypeDnsV1beta2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogTypeDnsV1beta2(this.wireValue);
  final String wireValue;

  static GoogleIamV1AuditLogConfigLogTypeDnsV1beta2 fromValue(String value) {
    for (final item in GoogleIamV1AuditLogConfigLogTypeDnsV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleIamV1AuditLogConfigLogTypeDnsV1beta2 value: $value');
  }
}
