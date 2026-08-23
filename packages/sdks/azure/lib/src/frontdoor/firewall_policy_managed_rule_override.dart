// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_managed_rule_override_exclusion.dart';
import 'firewall_policy_managed_rule_override_rule.dart';

class FirewallPolicyManagedRuleOverride {
  /// One or more `exclusion` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRuleOverrideExclusion>>? exclusions;
  /// The managed rule group to override.
  final pulumi.Input<String> ruleGroupName;
  /// One or more `rule` blocks as defined below. If none are specified, all of the rules in the group will be disabled.
  final pulumi.Input<List<FirewallPolicyManagedRuleOverrideRule>>? rules;

  /// Creates a new [FirewallPolicyManagedRuleOverride].
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [ruleGroupName] The managed rule group to override.
  /// [rules] One or more `rule` blocks as defined below. If none are specified, all of the rules in the group will be disabled.
  const FirewallPolicyManagedRuleOverride({
    this.exclusions,
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyManagedRuleOverrideExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<FirewallPolicyManagedRuleOverrideExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleGroupName': ruleGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyManagedRuleOverrideRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyManagedRuleOverrideRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyManagedRuleOverride.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyManagedRuleOverride(
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyManagedRuleOverrideExclusion>(guardedValue, (value) => FirewallPolicyManagedRuleOverrideExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyManagedRuleOverrideRule>(guardedValue, (value) => FirewallPolicyManagedRuleOverrideRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
