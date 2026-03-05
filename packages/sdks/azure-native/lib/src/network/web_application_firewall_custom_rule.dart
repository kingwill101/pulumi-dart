// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_by_user_session.dart';
import 'match_condition.dart';

/// Defines contents of a web application rule.
class WebApplicationFirewallCustomRule {
  /// Type of Actions.
  final pulumi.Input<String> action;
  /// List of user session identifier group by clauses.
  final pulumi.Input<List<GroupByUserSession>>? groupByUserSession;
  /// List of match conditions.
  final pulumi.Input<List<MatchCondition>> matchConditions;
  /// The name of the resource that is unique within a policy. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  final pulumi.Input<int> priority;
  /// Duration over which Rate Limit policy will be applied. Applies only when ruleType is RateLimitRule.
  final pulumi.Input<String>? rateLimitDuration;
  /// Rate Limit threshold to apply in case ruleType is RateLimitRule. Must be greater than or equal to 1
  final pulumi.Input<int>? rateLimitThreshold;
  /// The rule type.
  final pulumi.Input<String> ruleType;
  /// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  final pulumi.Input<String>? state;

  /// Creates a new [WebApplicationFirewallCustomRule].
  /// [action] Type of Actions.
  /// [groupByUserSession] List of user session identifier group by clauses.
  /// [matchConditions] List of match conditions.
  /// [name] The name of the resource that is unique within a policy. This name can be used to access the resource.
  /// [priority] Priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  /// [rateLimitDuration] Duration over which Rate Limit policy will be applied. Applies only when ruleType is RateLimitRule.
  /// [rateLimitThreshold] Rate Limit threshold to apply in case ruleType is RateLimitRule. Must be greater than or equal to 1
  /// [ruleType] The rule type.
  /// [state] Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  WebApplicationFirewallCustomRule({
    required this.action,
    this.groupByUserSession,
    required this.matchConditions,
    this.name,
    required this.priority,
    this.rateLimitDuration,
    this.rateLimitThreshold,
    required this.ruleType,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'groupByUserSession': ?pulumi.Input.mapOptionalInputValue<List<GroupByUserSession>, List<Map<String, dynamic>>>(groupByUserSession, (value) => pulumi.Input.encodeList<GroupByUserSession, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConditions': pulumi.Input.mapInputValue<List<MatchCondition>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<MatchCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'priority': priority,
      'rateLimitDuration': ?rateLimitDuration,
      'rateLimitThreshold': ?rateLimitThreshold,
      'ruleType': ruleType,
      'state': ?state,
    };
  }

  factory WebApplicationFirewallCustomRule.fromMap(Map<String, dynamic> map) {
    return WebApplicationFirewallCustomRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      groupByUserSession: (() { final guardedValue = map['groupByUserSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupByUserSession>(guardedValue, (value) => GroupByUserSession.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConditions: pulumi.Input.fromValue(pulumi.Input.decodeList<MatchCondition>(map['matchConditions']!, (value) => MatchCondition.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rateLimitDuration: (() { final guardedValue = map['rateLimitDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateLimitThreshold: (() { final guardedValue = map['rateLimitThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

