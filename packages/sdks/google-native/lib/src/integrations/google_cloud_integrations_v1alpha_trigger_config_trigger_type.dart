/// Optional. Type of trigger
enum GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType {
  triggerTypeUnspecified("TRIGGER_TYPE_UNSPECIFIED"),
  cron("CRON"),
  api("API"),
  sfdcChannel("SFDC_CHANNEL"),
  cloudPubsubExternal("CLOUD_PUBSUB_EXTERNAL"),
  sfdcCdcChannel("SFDC_CDC_CHANNEL"),
  cloudScheduler("CLOUD_SCHEDULER"),
  integrationConnectorTrigger("INTEGRATION_CONNECTOR_TRIGGER"),
  privateTrigger("PRIVATE_TRIGGER");

  const GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType value: $value',
    );
  }
}
