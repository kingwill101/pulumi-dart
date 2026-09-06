import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction of allowed network traffic based on the rule.
enum SecurityRuleDirection implements pulumi.PulumiEnum<String> {
  inbound("Inbound"),
  outbound("Outbound");

  const SecurityRuleDirection(this.wireValue);
  @override
  final String wireValue;

  static SecurityRuleDirection fromValue(String value) {
    for (final item in SecurityRuleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityRuleDirection value: $value');
  }
}
