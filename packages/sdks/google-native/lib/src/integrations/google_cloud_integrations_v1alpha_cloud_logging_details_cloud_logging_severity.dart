import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration version getting executed.
enum GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity implements pulumi.PulumiEnum<String> {
  cloudLoggingSeverityUnspecified("CLOUD_LOGGING_SEVERITY_UNSPECIFIED"),
  default_("DEFAULT"),
  info("INFO"),
  error("ERROR"),
  warning("WARNING");

  const GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity value: $value');
  }
}
