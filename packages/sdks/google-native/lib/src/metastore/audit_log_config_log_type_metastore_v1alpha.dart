import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeMetastoreV1alpha implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeMetastoreV1alpha(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeMetastoreV1alpha fromValue(String value) {
    for (final item in AuditLogConfigLogTypeMetastoreV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeMetastoreV1alpha value: $value');
  }
}
