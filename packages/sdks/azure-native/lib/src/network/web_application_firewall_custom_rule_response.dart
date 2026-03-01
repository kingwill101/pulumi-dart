// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_by_user_session_response.dart';
import 'match_condition_response.dart';

/// Defines contents of a web application rule.
class WebApplicationFirewallCustomRuleResponse {
  /// Type of Actions.
  final String action;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// List of user session identifier group by clauses.
  final List<GroupByUserSessionResponse>? groupByUserSession;
  /// List of match conditions.
  final List<MatchConditionResponse> matchConditions;
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

  /// Creates a new [WebApplicationFirewallCustomRuleResponse].
  /// [action] Type of Actions.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [groupByUserSession] List of user session identifier group by clauses.
  /// [matchConditions] List of match conditions.
  /// [name] The name of the resource that is unique within a policy. This name can be used to access the resource.
  /// [priority] Priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  /// [rateLimitDuration] Duration over which Rate Limit policy will be applied. Applies only when ruleType is RateLimitRule.
  /// [rateLimitThreshold] Rate Limit threshold to apply in case ruleType is RateLimitRule. Must be greater than or equal to 1
  /// [ruleType] The rule type.
  /// [state] Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  WebApplicationFirewallCustomRuleResponse({
    required this.action,
    required this.etag,
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
      'etag': etag,
      'groupByUserSession': ?groupByUserSession == null ? null : pulumi.Input.encodeList<GroupByUserSessionResponse, Map<String, dynamic>>(groupByUserSession!, (value) => value.toMap()),
      'matchConditions': pulumi.Input.encodeList<MatchConditionResponse, Map<String, dynamic>>(matchConditions, (value) => value.toMap()),
      'name': ?name,
      'priority': priority,
      'rateLimitDuration': ?rateLimitDuration,
      'rateLimitThreshold': ?rateLimitThreshold,
      'ruleType': ruleType,
      'state': ?state,
    };
  }

  factory WebApplicationFirewallCustomRuleResponse.fromMap(Map<String, dynamic> map) {
    return WebApplicationFirewallCustomRuleResponse(
      action: map['action'] as String,
      etag: map['etag'] as String,
      groupByUserSession: map['groupByUserSession'] == null ? null : pulumi.Input.decodeList<GroupByUserSessionResponse>(map['groupByUserSession'], (value) => GroupByUserSessionResponse.fromMap((value as Map).cast<String, dynamic>())),
      matchConditions: pulumi.Input.decodeList<MatchConditionResponse>(map['matchConditions'], (value) => MatchConditionResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      rateLimitDuration: map['rateLimitDuration'] == null ? null : map['rateLimitDuration'] as String,
      rateLimitThreshold: map['rateLimitThreshold'] == null ? null : map['rateLimitThreshold'] as int,
      ruleType: map['ruleType'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

