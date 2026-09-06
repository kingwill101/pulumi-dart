import 'package:pulumi/pulumi.dart' as pulumi;

/// The Network protocol of a Rule condition.
enum FirewallPolicyRuleConditionNetworkProtocol implements pulumi.PulumiEnum<String> {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any"),
  valueICMP("ICMP");

  const FirewallPolicyRuleConditionNetworkProtocol(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyRuleConditionNetworkProtocol fromValue(String value) {
    for (final item in FirewallPolicyRuleConditionNetworkProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleConditionNetworkProtocol value: $value');
  }
}
