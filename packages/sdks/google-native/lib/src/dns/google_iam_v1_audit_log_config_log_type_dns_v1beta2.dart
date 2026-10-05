import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogTypeDnsV1beta2 implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogTypeDnsV1beta2(this.wireValue);
  @override
  final String wireValue;

  static GoogleIamV1AuditLogConfigLogTypeDnsV1beta2 fromValue(String value) {
    for (final item in GoogleIamV1AuditLogConfigLogTypeDnsV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleIamV1AuditLogConfigLogTypeDnsV1beta2 value: $value');
  }
}
