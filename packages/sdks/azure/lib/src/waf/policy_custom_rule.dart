// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_custom_rule_match_condition.dart';

class PolicyCustomRule {
  /// Type of action. Possible values are `Allow`, `Block`, `JSChallenge` and `Log`.
  ///
  /// &gt; **Note:** If the `rule_type` is specified as `RateLimitRule`, the `Allow` is not supported.
  final pulumi.Input<String> action;

  /// Describes if the policy is in enabled state or disabled state. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Specifies what grouping the rate limit will count requests by. Possible values are `ClientAddr`, `ClientAddrXFFHeader`, `GeoLocation`, `GeoLocationXFFHeader` and `None`.
  final pulumi.Input<String>? groupRateLimitBy;

  /// One or more `match_conditions` blocks as defined below.
  final pulumi.Input<List<PolicyCustomRuleMatchCondition>> matchConditions;

  /// Gets name of the resource that is unique within a policy. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  final pulumi.Input<int> priority;

  /// Specifies the duration at which the rate limit policy will be applied. Should be used with `RateLimitRule` rule type. Possible values are `FiveMins` and `OneMin`.
  final pulumi.Input<String>? rateLimitDuration;

  /// Specifies the threshold value for the rate limit policy. Must be greater than or equal to 1 if provided.
  final pulumi.Input<int>? rateLimitThreshold;

  /// Describes the type of rule. Possible values are `MatchRule`, `RateLimitRule` and `Invalid`.
  final pulumi.Input<String> ruleType;

  /// Creates a new [PolicyCustomRule].
  /// [action] Type of action. Possible values are `Allow`, `Block`, `JSChallenge` and `Log`.
  /// [enabled] Describes if the policy is in enabled state or disabled state. Defaults to `true`.
  /// [groupRateLimitBy] Specifies what grouping the rate limit will count requests by. Possible values are `ClientAddr`, `ClientAddrXFFHeader`, `GeoLocation`, `GeoLocationXFFHeader` and `None`.
  /// [matchConditions] One or more `match_conditions` blocks as defined below.
  /// [name] Gets name of the resource that is unique within a policy. This name can be used to access the resource.
  /// [priority] Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  /// [rateLimitDuration] Specifies the duration at which the rate limit policy will be applied. Should be used with `RateLimitRule` rule type. Possible values are `FiveMins` and `OneMin`.
  /// [rateLimitThreshold] Specifies the threshold value for the rate limit policy. Must be greater than or equal to 1 if provided.
  /// [ruleType] Describes the type of rule. Possible values are `MatchRule`, `RateLimitRule` and `Invalid`.
  PolicyCustomRule({
    required this.action,
    this.enabled,
    this.groupRateLimitBy,
    required this.matchConditions,
    this.name,
    required this.priority,
    this.rateLimitDuration,
    this.rateLimitThreshold,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabled': ?enabled,
      'groupRateLimitBy': ?groupRateLimitBy,
      'matchConditions':
          pulumi.Input.mapInputValue<
            List<PolicyCustomRuleMatchCondition>,
            List<Map<String, dynamic>>
          >(
            matchConditions,
            (value) =>
                pulumi.Input.encodeList<
                  PolicyCustomRuleMatchCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'priority': priority,
      'rateLimitDuration': ?rateLimitDuration,
      'rateLimitThreshold': ?rateLimitThreshold,
      'ruleType': ruleType,
    };
  }

  factory PolicyCustomRule.fromMap(Map<String, dynamic> map) {
    return PolicyCustomRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      groupRateLimitBy: (() {
        final guardedValue = map['groupRateLimitBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      matchConditions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PolicyCustomRuleMatchCondition>(
          map['matchConditions']!,
          (value) => PolicyCustomRuleMatchCondition.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rateLimitDuration: (() {
        final guardedValue = map['rateLimitDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rateLimitThreshold: (() {
        final guardedValue = map['rateLimitThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}
