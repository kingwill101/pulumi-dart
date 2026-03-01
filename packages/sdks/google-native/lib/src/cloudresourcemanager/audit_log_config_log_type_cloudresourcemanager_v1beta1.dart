/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudresourcemanagerV1beta1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudresourcemanagerV1beta1(this.value);
  final String value;

  static AuditLogConfigLogTypeCloudresourcemanagerV1beta1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudresourcemanagerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeCloudresourcemanagerV1beta1 value: $value');
  }
}

