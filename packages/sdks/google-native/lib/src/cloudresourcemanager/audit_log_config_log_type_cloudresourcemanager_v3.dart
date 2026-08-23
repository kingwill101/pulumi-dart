/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudresourcemanagerV3 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudresourcemanagerV3(this.wireValue);
  final String wireValue;

  static AuditLogConfigLogTypeCloudresourcemanagerV3 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudresourcemanagerV3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeCloudresourcemanagerV3 value: $value');
  }
}
