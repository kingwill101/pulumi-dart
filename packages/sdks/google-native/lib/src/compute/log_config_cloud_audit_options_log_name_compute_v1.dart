import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum LogConfigCloudAuditOptionsLogNameComputeV1 implements pulumi.PulumiEnum<String> {
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS"),
  unspecifiedLogName("UNSPECIFIED_LOG_NAME");

  const LogConfigCloudAuditOptionsLogNameComputeV1(this.wireValue);
  @override
  final String wireValue;

  static LogConfigCloudAuditOptionsLogNameComputeV1 fromValue(String value) {
    for (final item in LogConfigCloudAuditOptionsLogNameComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogConfigCloudAuditOptionsLogNameComputeV1 value: $value');
  }
}
