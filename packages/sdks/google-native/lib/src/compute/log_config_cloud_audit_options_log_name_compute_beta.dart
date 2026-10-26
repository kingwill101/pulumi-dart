import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum LogConfigCloudAuditOptionsLogNameComputeBeta implements pulumi.PulumiEnum<String> {
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS"),
  unspecifiedLogName("UNSPECIFIED_LOG_NAME");

  const LogConfigCloudAuditOptionsLogNameComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static LogConfigCloudAuditOptionsLogNameComputeBeta fromValue(String value) {
    for (final item in LogConfigCloudAuditOptionsLogNameComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogConfigCloudAuditOptionsLogNameComputeBeta value: $value');
  }
}
