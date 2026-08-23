/// The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
enum GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType {
  thresholdTypeUnspecified("THRESHOLD_TYPE_UNSPECIFIED"),
  expectedMin("EXPECTED_MIN"),
  expectedMax("EXPECTED_MAX");

  const GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType value: $value');
  }
}
