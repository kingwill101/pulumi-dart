import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudresourcemanagerV2beta1 implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudresourcemanagerV2beta1(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeCloudresourcemanagerV2beta1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudresourcemanagerV2beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeCloudresourcemanagerV2beta1 value: $value');
  }
}
