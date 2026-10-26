import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of metric.
enum GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType implements pulumi.PulumiEnum<String> {
  metricTypeUnspecified("METRIC_TYPE_UNSPECIFIED"),
  eventErrorRate("EVENT_ERROR_RATE"),
  eventWarningRate("EVENT_WARNING_RATE"),
  taskErrorRate("TASK_ERROR_RATE"),
  taskWarningRate("TASK_WARNING_RATE"),
  taskRate("TASK_RATE"),
  eventRate("EVENT_RATE"),
  eventAverageDuration("EVENT_AVERAGE_DURATION"),
  eventPercentileDuration("EVENT_PERCENTILE_DURATION"),
  taskAverageDuration("TASK_AVERAGE_DURATION"),
  taskPercentileDuration("TASK_PERCENTILE_DURATION");

  const GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType value: $value');
  }
}
