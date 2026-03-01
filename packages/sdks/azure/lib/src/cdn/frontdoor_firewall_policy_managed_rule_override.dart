// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_firewall_policy_managed_rule_override_exclusion.dart';
import 'frontdoor_firewall_policy_managed_rule_override_rule.dart';

class FrontdoorFirewallPolicyManagedRuleOverride {
  /// One or more `exclusion` blocks as defined below.
  final List<FrontdoorFirewallPolicyManagedRuleOverrideExclusion>? exclusions;
  /// The managed rule group to override.
  final String ruleGroupName;
  /// One or more `rule` blocks as defined below. If none are specified, all of the rules in the group will be disabled.
  final List<FrontdoorFirewallPolicyManagedRuleOverrideRule>? rules;

  /// Creates a new [FrontdoorFirewallPolicyManagedRuleOverride].
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [ruleGroupName] The managed rule group to override.
  /// [rules] One or more `rule` blocks as defined below. If none are specified, all of the rules in the group will be disabled.
  FrontdoorFirewallPolicyManagedRuleOverride({
    this.exclusions,
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<FrontdoorFirewallPolicyManagedRuleOverrideExclusion, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'ruleGroupName': ruleGroupName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<FrontdoorFirewallPolicyManagedRuleOverrideRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory FrontdoorFirewallPolicyManagedRuleOverride.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyManagedRuleOverride(
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<FrontdoorFirewallPolicyManagedRuleOverrideExclusion>(map['exclusions'], (value) => FrontdoorFirewallPolicyManagedRuleOverrideExclusion.fromMap((value as Map).cast<String, dynamic>())),
      ruleGroupName: map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<FrontdoorFirewallPolicyManagedRuleOverrideRule>(map['rules'], (value) => FrontdoorFirewallPolicyManagedRuleOverrideRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

