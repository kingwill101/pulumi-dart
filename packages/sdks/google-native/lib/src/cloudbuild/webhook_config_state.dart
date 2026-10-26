import 'package:pulumi/pulumi.dart' as pulumi;

/// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
enum WebhookConfigState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  ok("OK"),
  secretDeleted("SECRET_DELETED");

  const WebhookConfigState(this.wireValue);
  @override
  final String wireValue;

  static WebhookConfigState fromValue(String value) {
    for (final item in WebhookConfigState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookConfigState value: $value');
  }
}
