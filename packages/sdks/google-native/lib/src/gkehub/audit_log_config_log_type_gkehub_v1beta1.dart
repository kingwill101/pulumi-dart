import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum AuditLogConfigLogTypeGkehubV1beta1 implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGkehubV1beta1(this.wireValue);
  @override
  final String wireValue;

  static AuditLogConfigLogTypeGkehubV1beta1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGkehubV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeGkehubV1beta1 value: $value');
  }
}
