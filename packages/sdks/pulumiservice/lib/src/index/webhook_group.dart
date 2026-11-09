import 'package:pulumi/pulumi.dart' as pulumi;

enum WebhookGroup implements pulumi.PulumiEnum<String> {
  stacks("stacks"),
  deployments("deployments"),
  environments("environments");

  const WebhookGroup(this.wireValue);
  @override
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
