// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_tracing_rules_rule.dart';

/// {@template pulumi_index_zone_tracing_rules_zone_tracing_rules_args_doc}
/// The set of arguments for ZoneTracingRules.
/// {@endtemplate}
/// {@macro pulumi_index_zone_tracing_rules_zone_tracing_rules_args_doc}
class ZoneTracingRulesArgs {
  /// Trace rules in evaluation order.
  final pulumi.Input<List<ZoneTracingRulesRule>> rules;
  /// Specify the zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneTracingRulesArgs].
  /// [rules] Trace rules in evaluation order.
  /// [zoneId] Specify the zone ID.
  const ZoneTracingRulesArgs({
    required this.rules,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<ZoneTracingRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ZoneTracingRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory ZoneTracingRulesArgs.fromMap(Map<String, dynamic> map) {
    return ZoneTracingRulesArgs(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneTracingRulesRule>(map['rules']!, (value) => ZoneTracingRulesRule.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
