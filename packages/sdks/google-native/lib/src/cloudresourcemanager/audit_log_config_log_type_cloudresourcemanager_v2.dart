/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudresourcemanagerV2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudresourcemanagerV2(this.wireValue);
  final String wireValue;

  static AuditLogConfigLogTypeCloudresourcemanagerV2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudresourcemanagerV2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeCloudresourcemanagerV2 value: $value');
  }
}

