import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeWorkstationsV1beta implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeWorkstationsV1beta(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeWorkstationsV1beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeWorkstationsV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeWorkstationsV1beta value: $value');
  }
}
