// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monetization_rules_rule.dart';

/// {@template pulumi_index_monetization_rules_monetization_rules_args_doc}
/// The set of arguments for MonetizationRules.
/// {@endtemplate}
/// {@macro pulumi_index_monetization_rules_monetization_rules_args_doc}
class MonetizationRulesArgs {
  /// Full desired Payment Required ruleset. An empty array clears all payment rules. The ruleset may contain at most 40 unique wallet addresses; address comparison is case-insensitive. Every address must pass wallet screening before deployment.
  final pulumi.Input<List<MonetizationRulesRule>> rules;
  /// The unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [MonetizationRulesArgs].
  /// [rules] Full desired Payment Required ruleset. An empty array clears all payment rules. The ruleset may contain at most 40 unique wallet addresses; address comparison is case-insensitive. Every address must pass wallet screening before deployment.
  /// [zoneId] The unique ID of the zone.
  const MonetizationRulesArgs({
    required this.rules,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<MonetizationRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<MonetizationRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory MonetizationRulesArgs.fromMap(Map<String, dynamic> map) {
    return MonetizationRulesArgs(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<MonetizationRulesRule>(map['rules']!, (value) => MonetizationRulesRule.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
