enum WebhookGroup {
  stacks("stacks"),
  deployments("deployments"),
  environments("environments");

  const WebhookGroup(this.wireValue);
  final String wireValue;

  static WebhookGroup fromValue(String value) {
    for (final item in WebhookGroup.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookGroup value: $value');
  }
}

