// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_managed_rule_override_rule_exclusion.dart';

class FirewallPolicyManagedRuleOverrideRule {
  /// The action to be applied when the rule matches. Possible values are `Allow`, `Block`, `Log`, or `Redirect`.
  final pulumi.Input<String> action;

  /// Is the managed rule override enabled or disabled. Defaults to `false`
  final pulumi.Input<bool>? enabled;

  /// One or more `exclusion` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRuleOverrideRuleExclusion>>?
  exclusions;

  /// Identifier for the managed rule.
  final pulumi.Input<String> ruleId;

  /// Creates a new [FirewallPolicyManagedRuleOverrideRule].
  /// [action] The action to be applied when the rule matches. Possible values are `Allow`, `Block`, `Log`, or `Redirect`.
  /// [enabled] Is the managed rule override enabled or disabled. Defaults to `false`
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [ruleId] Identifier for the managed rule.
  FirewallPolicyManagedRuleOverrideRule({
    required this.action,
    this.enabled,
    this.exclusions,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabled': ?enabled,
      'exclusions':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyManagedRuleOverrideRuleExclusion>,
            List<Map<String, dynamic>>
          >(
            exclusions,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyManagedRuleOverrideRuleExclusion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ruleId': ruleId,
    };
  }

  factory FirewallPolicyManagedRuleOverrideRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyManagedRuleOverrideRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      exclusions: (() {
        final guardedValue = map['exclusions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<FirewallPolicyManagedRuleOverrideRuleExclusion>(
            guardedValue,
            (value) => FirewallPolicyManagedRuleOverrideRuleExclusion.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
