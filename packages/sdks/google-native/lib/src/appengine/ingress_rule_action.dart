import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to take on matched requests.
enum IngressRuleAction implements pulumi.PulumiEnum<String> {
  unspecifiedAction("UNSPECIFIED_ACTION"),
  allow("ALLOW"),
  deny("DENY");

  const IngressRuleAction(this.wireValue);
  @override
  final String wireValue;

  static IngressRuleAction fromValue(String value) {
    for (final item in IngressRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressRuleAction value: $value');
  }
}
