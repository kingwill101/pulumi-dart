// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monetization_rules_rule.dart';

/// Input properties used for looking up and filtering MonetizationRules resources.
class MonetizationRulesState {
  /// Full desired Payment Required ruleset. An empty array clears all payment rules. The ruleset may contain at most 40 unique wallet addresses; address comparison is case-insensitive. Every address must pass wallet screening before deployment.
  final pulumi.Input<List<MonetizationRulesRule>?>? rules;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [MonetizationRulesState].
  /// [rules] Full desired Payment Required ruleset. An empty array clears all payment rules. The ruleset may contain at most 40 unique wallet addresses; address comparison is case-insensitive. Every address must pass wallet screening before deployment.
  /// [zoneId] The unique ID of the zone.
  const MonetizationRulesState({
    this.rules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<MonetizationRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<MonetizationRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory MonetizationRulesState.fromMap(Map<String, dynamic> map) {
    return MonetizationRulesState(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonetizationRulesRule>(guardedValue, (value) => MonetizationRulesRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
