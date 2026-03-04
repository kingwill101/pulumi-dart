/// This is deprecated and has no effect. Do not use.
enum LogConfigCloudAuditOptionsLogName {
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS"),
  unspecifiedLogName("UNSPECIFIED_LOG_NAME");

  const LogConfigCloudAuditOptionsLogName(this.wireValue);
  final String wireValue;

  static LogConfigCloudAuditOptionsLogName fromValue(String value) {
    for (final item in LogConfigCloudAuditOptionsLogName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown LogConfigCloudAuditOptionsLogName value: $value',
    );
  }
}
