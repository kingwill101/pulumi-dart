import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogType implements pulumi.PulumiEnum<String> {
  adminRead("ADMIN_READ"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED");

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
