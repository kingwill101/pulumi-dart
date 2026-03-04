/// Optional. Indicates whether webhooks are enabled for the intent.
enum IntentWebhookState {
  webhookStateUnspecified("WEBHOOK_STATE_UNSPECIFIED"),
  webhookStateEnabled("WEBHOOK_STATE_ENABLED"),
  webhookStateEnabledForSlotFilling("WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING");

  const IntentWebhookState(this.wireValue);
  final String wireValue;

  static IntentWebhookState fromValue(String value) {
    for (final item in IntentWebhookState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntentWebhookState value: $value');
  }
}
