import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogType implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogType fromValue(String value) {
    for (final item in AuditLogConfigLogType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType value: $value');
  }
}
