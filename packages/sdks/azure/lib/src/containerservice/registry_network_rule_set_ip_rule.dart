// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryNetworkRuleSetIpRule {
  /// The behaviour for requests matching this rule. At this time the only supported value is `Allow`
  final pulumi.Input<String> action;
  /// The CIDR block from which requests will match the rule.
  final pulumi.Input<String> ipRange;

  /// Creates a new [RegistryNetworkRuleSetIpRule].
  /// [action] The behaviour for requests matching this rule. At this time the only supported value is `Allow`
  /// [ipRange] The CIDR block from which requests will match the rule.
  const RegistryNetworkRuleSetIpRule({
    required this.action,
    required this.ipRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'ipRange': ipRange,
    };
  }

  factory RegistryNetworkRuleSetIpRule.fromMap(Map<String, dynamic> map) {
    return RegistryNetworkRuleSetIpRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      ipRange: pulumi.Input.fromValue(map['ipRange'] as String),
    );
  }
}

