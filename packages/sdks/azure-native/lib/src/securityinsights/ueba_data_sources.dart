/// The data source that enriched by ueba.
enum UebaDataSources {
  valueAuditLogs("AuditLogs"),
  valueAzureActivity("AzureActivity"),
  valueSecurityEvent("SecurityEvent"),
  valueSigninLogs("SigninLogs");

  const UebaDataSources(this.wireValue);
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
