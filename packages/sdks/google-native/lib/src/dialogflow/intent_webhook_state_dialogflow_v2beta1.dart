import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Indicates whether webhooks are enabled for the intent.
enum IntentWebhookStateDialogflowV2beta1 implements pulumi.PulumiEnum<String> {
  webhookStateUnspecified("WEBHOOK_STATE_UNSPECIFIED"),
  webhookStateEnabled("WEBHOOK_STATE_ENABLED"),
  webhookStateEnabledForSlotFilling("WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING");

  const IntentWebhookStateDialogflowV2beta1(this.wireValue);
  @override
  final String wireValue;

  static IntentWebhookStateDialogflowV2beta1 fromValue(String value) {
    for (final item in IntentWebhookStateDialogflowV2beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntentWebhookStateDialogflowV2beta1 value: $value');
  }
}
