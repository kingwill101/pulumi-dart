import 'package:pulumi/pulumi.dart' as pulumi;

/// The data source that enriched by ueba.
enum UebaDataSources implements pulumi.PulumiEnum<String> {
  valueAuditLogs("AuditLogs"),
  valueAzureActivity("AzureActivity"),
  valueSecurityEvent("SecurityEvent"),
  valueSigninLogs("SigninLogs");

  const UebaDataSources(this.wireValue);
  @override
  final String wireValue;

  static UebaDataSources fromValue(String value) {
    for (final item in UebaDataSources.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UebaDataSources value: $value');
  }
}
