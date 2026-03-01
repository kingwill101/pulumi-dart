// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_custom_rule_match_condition.dart';

class FirewallPolicyCustomRule {
  /// The action to perform when the rule is matched. Possible values are `Allow`, `Block`, `Log`, or `Redirect`.
  final String action;
  /// Is the rule is enabled or disabled? Defaults to `true`.
  final bool? enabled;
  /// One or more `match_condition` block defined below. Can support up to `10` `match_condition` blocks.
  final List<FirewallPolicyCustomRuleMatchCondition>? matchConditions;
  /// Gets name of the resource that is unique within a policy. This name can be used to access the resource.
  final String name;
  /// The priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. Defaults to `1`.
  final int? priority;
  /// The rate limit duration in minutes. Defaults to `1`.
  final int? rateLimitDurationInMinutes;
  /// The rate limit threshold. Defaults to `10`.
  final int? rateLimitThreshold;
  /// The type of rule. Possible values are `MatchRule` or `RateLimitRule`.
  final String type;

  /// Creates a new [FirewallPolicyCustomRule].
  /// [action] The action to perform when the rule is matched. Possible values are `Allow`, `Block`, `Log`, or `Redirect`.
  /// [enabled] Is the rule is enabled or disabled? Defaults to `true`.
  /// [matchConditions] One or more `match_condition` block defined below. Can support up to `10` `match_condition` blocks.
  /// [name] Gets name of the resource that is unique within a policy. This name can be used to access the resource.
  /// [priority] The priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. Defaults to `1`.
  /// [rateLimitDurationInMinutes] The rate limit duration in minutes. Defaults to `1`.
  /// [rateLimitThreshold] The rate limit threshold. Defaults to `10`.
  /// [type] The type of rule. Possible values are `MatchRule` or `RateLimitRule`.
  FirewallPolicyCustomRule({
    required this.action,
    this.enabled,
    this.matchConditions,
    required this.name,
    this.priority,
    this.rateLimitDurationInMinutes,
    this.rateLimitThreshold,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabled': ?enabled,
      'matchConditions': ?matchConditions == null ? null : pulumi.Input.encodeList<FirewallPolicyCustomRuleMatchCondition, Map<String, dynamic>>(matchConditions!, (value) => value.toMap()),
      'name': name,
      'priority': ?priority,
      'rateLimitDurationInMinutes': ?rateLimitDurationInMinutes,
      'rateLimitThreshold': ?rateLimitThreshold,
      'type': type,
    };
  }

  factory FirewallPolicyCustomRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyCustomRule(
      action: map['action'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      matchConditions: map['matchConditions'] == null ? null : pulumi.Input.decodeList<FirewallPolicyCustomRuleMatchCondition>(map['matchConditions'], (value) => FirewallPolicyCustomRuleMatchCondition.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      rateLimitDurationInMinutes: map['rateLimitDurationInMinutes'] == null ? null : map['rateLimitDurationInMinutes'] as int,
      rateLimitThreshold: map['rateLimitThreshold'] == null ? null : map['rateLimitThreshold'] as int,
      type: map['type'] as String,
    );
  }
}

