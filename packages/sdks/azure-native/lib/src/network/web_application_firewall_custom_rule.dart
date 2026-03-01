// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_by_user_session.dart';
import 'match_condition.dart';

/// Defines contents of a web application rule.
class WebApplicationFirewallCustomRule {
  /// Type of Actions.
  final String action;
  /// List of user session identifier group by clauses.
  final List<GroupByUserSession>? groupByUserSession;
  /// List of match conditions.
  final List<MatchCondition> matchConditions;
  /// The name of the resource that is unique within a policy. This name can be used to access the resource.
  final String? name;
  /// Priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  final int priority;
  /// Duration over which Rate Limit policy will be applied. Applies only when ruleType is RateLimitRule.
  final String? rateLimitDuration;
  /// Rate Limit threshold to apply in case ruleType is RateLimitRule. Must be greater than or equal to 1
  final int? rateLimitThreshold;
  /// The rule type.
  final String ruleType;
  /// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  final String? state;

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
      'groupByUserSession': ?groupByUserSession == null ? null : pulumi.Input.encodeList<GroupByUserSession, Map<String, dynamic>>(groupByUserSession!, (value) => value.toMap()),
      'matchConditions': pulumi.Input.encodeList<MatchCondition, Map<String, dynamic>>(matchConditions, (value) => value.toMap()),
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
      action: map['action'] as String,
      groupByUserSession: map['groupByUserSession'] == null ? null : pulumi.Input.decodeList<GroupByUserSession>(map['groupByUserSession'], (value) => GroupByUserSession.fromMap((value as Map).cast<String, dynamic>())),
      matchConditions: pulumi.Input.decodeList<MatchCondition>(map['matchConditions'], (value) => MatchCondition.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      rateLimitDuration: map['rateLimitDuration'] == null ? null : map['rateLimitDuration'] as String,
      rateLimitThreshold: map['rateLimitThreshold'] == null ? null : map['rateLimitThreshold'] as int,
      ruleType: map['ruleType'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

