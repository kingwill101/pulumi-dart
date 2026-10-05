import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeGameservicesV1beta implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGameservicesV1beta(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeGameservicesV1beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGameservicesV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeGameservicesV1beta value: $value');
  }
}
