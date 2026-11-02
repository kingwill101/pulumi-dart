// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monetization_rules_rule.dart';

/// Result data returned by getMonetizationRules.
class GetMonetizationRulesResult {
  /// The unique ID of the zone.
  final String? id;
  /// The zone's payment rules, in the order they are evaluated. Empty when the zone has no payment rules.
  final List<GetMonetizationRulesRule>? rules;
  /// The unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetMonetizationRulesResult].
  /// [id] The unique ID of the zone.
  /// [rules] The zone's payment rules, in the order they are evaluated. Empty when the zone has no payment rules.
  /// [zoneId] The unique ID of the zone.
  const GetMonetizationRulesResult({
    this.id,
    this.rules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMonetizationRulesRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetMonetizationRulesResult.fromMap(Map<String, dynamic> map) {
    return GetMonetizationRulesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMonetizationRulesRule>(guardedValue, (value) => GetMonetizationRulesRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
