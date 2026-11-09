// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_tracing_rules_rule.dart';

/// Input properties used for looking up and filtering ZoneTracingRules resources.
class ZoneTracingRulesState {
  /// Trace rules in evaluation order.
  final pulumi.Input<List<ZoneTracingRulesRule>?>? rules;
  /// Specify the zone ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZoneTracingRulesState].
  /// [rules] Trace rules in evaluation order.
  /// [zoneId] Specify the zone ID.
  const ZoneTracingRulesState({
    this.rules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ZoneTracingRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ZoneTracingRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory ZoneTracingRulesState.fromMap(Map<String, dynamic> map) {
    return ZoneTracingRulesState(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneTracingRulesRule>(guardedValue, (value) => ZoneTracingRulesRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
