/// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
enum WebhookConfigState {
  stateUnspecified("STATE_UNSPECIFIED"),
  ok("OK"),
  secretDeleted("SECRET_DELETED");

  const WebhookConfigState(this.wireValue);
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
