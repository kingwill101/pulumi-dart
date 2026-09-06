import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
enum SecurityRuleDirection implements pulumi.PulumiEnum<String> {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

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
