import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudresourcemanagerV3 implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudresourcemanagerV3(this.wireValue);
  @override
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
