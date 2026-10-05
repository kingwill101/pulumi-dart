import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum ApigatewayAuditLogConfigLogType implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const ApigatewayAuditLogConfigLogType(this.wireValue);
  @override
  final String wireValue;

  static ApigatewayAuditLogConfigLogType fromValue(String value) {
    for (final item in ApigatewayAuditLogConfigLogType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApigatewayAuditLogConfigLogType value: $value');
  }
}
