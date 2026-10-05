import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeMetastoreV1beta implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeMetastoreV1beta(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeMetastoreV1beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeMetastoreV1beta value: $value');
  }
}
