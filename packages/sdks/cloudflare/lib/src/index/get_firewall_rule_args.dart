// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_firewall_rule_get_firewall_rule_args_doc}
/// Arguments for getFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_firewall_rule_get_firewall_rule_args_doc}
class GetFirewallRuleArgs {
  /// The unique identifier of the firewall rule.
  final pulumi.Input<String?>? ruleId;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetFirewallRuleArgs].
  /// [ruleId] The unique identifier of the firewall rule.
  /// [zoneId] Defines an identifier.
  const GetFirewallRuleArgs({
    this.ruleId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ?ruleId,
      'zoneId': ?zoneId,
    };
  }

  factory GetFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleArgs(
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
