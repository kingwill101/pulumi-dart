import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudfunctionsV2 implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudfunctionsV2(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeCloudfunctionsV2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudfunctionsV2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeCloudfunctionsV2 value: $value');
  }
}
