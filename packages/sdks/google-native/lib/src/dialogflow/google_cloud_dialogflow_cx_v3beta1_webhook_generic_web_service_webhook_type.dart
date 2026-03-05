/// Optional. Type of the webhook.
enum GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType {
  webhookTypeUnspecified("WEBHOOK_TYPE_UNSPECIFIED"),
  standard("STANDARD"),
  flexible("FLEXIBLE");

  const GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType value: $value');
  }
}

