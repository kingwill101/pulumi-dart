import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeDomainsV1alpha2 implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDomainsV1alpha2(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeDomainsV1alpha2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDomainsV1alpha2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeDomainsV1alpha2 value: $value');
  }
}
