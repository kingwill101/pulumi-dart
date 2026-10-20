import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudfunctionsV2beta implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudfunctionsV2beta(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeCloudfunctionsV2beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudfunctionsV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeCloudfunctionsV2beta value: $value');
  }
}
