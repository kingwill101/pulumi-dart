import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type that this config enables.
enum ApigatewayAuditLogConfigLogTypeApigatewayV1beta implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const ApigatewayAuditLogConfigLogTypeApigatewayV1beta(this.wireValue);
  @override
  final String wireValue;

  static ApigatewayAuditLogConfigLogTypeApigatewayV1beta fromValue(String value) {
    for (final item in ApigatewayAuditLogConfigLogTypeApigatewayV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApigatewayAuditLogConfigLogTypeApigatewayV1beta value: $value');
  }
}
