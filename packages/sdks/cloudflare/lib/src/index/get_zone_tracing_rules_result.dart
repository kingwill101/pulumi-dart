// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_tracing_rules_rule.dart';

/// Result data returned by getZoneTracingRules.
class GetZoneTracingRulesResult {
  /// Specify the zone ID.
  final String? id;
  /// Trace rules in evaluation order.
  final List<GetZoneTracingRulesRule>? rules;
  /// Specify the zone ID.
  final String? zoneId;

  /// Creates a new [GetZoneTracingRulesResult].
  /// [id] Specify the zone ID.
  /// [rules] Trace rules in evaluation order.
  /// [zoneId] Specify the zone ID.
  const GetZoneTracingRulesResult({
    this.id,
    this.rules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZoneTracingRulesRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneTracingRulesResult.fromMap(Map<String, dynamic> map) {
    return GetZoneTracingRulesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZoneTracingRulesRule>(guardedValue, (value) => GetZoneTracingRulesRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
