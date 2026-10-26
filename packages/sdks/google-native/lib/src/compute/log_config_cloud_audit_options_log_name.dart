import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum LogConfigCloudAuditOptionsLogName implements pulumi.PulumiEnum<String> {
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS"),
  unspecifiedLogName("UNSPECIFIED_LOG_NAME");

  const LogConfigCloudAuditOptionsLogName(this.wireValue);
  @override
  final String wireValue;

  static LogConfigCloudAuditOptionsLogName fromValue(String value) {
    for (final item in LogConfigCloudAuditOptionsLogName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogConfigCloudAuditOptionsLogName value: $value');
  }
}
