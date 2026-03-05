/// Optional. Type of the webhook.
enum GoogleCloudDialogflowCxV3WebhookGenericWebServiceWebhookType {
  webhookTypeUnspecified("WEBHOOK_TYPE_UNSPECIFIED"),
  standard("STANDARD"),
  flexible("FLEXIBLE");

  const GoogleCloudDialogflowCxV3WebhookGenericWebServiceWebhookType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowCxV3WebhookGenericWebServiceWebhookType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3WebhookGenericWebServiceWebhookType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3WebhookGenericWebServiceWebhookType value: $value');
  }
}

