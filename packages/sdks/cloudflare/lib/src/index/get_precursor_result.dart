// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_precursor_enforcement_rule.dart';

/// Result data returned by getPrecursor.
class GetPrecursorResult {
  /// The zone-level Precursor enforcement mode applied to requests that do
  /// not match a more specific enforcement rule.
  /// Available values: "off", "min-friction", "max-security".
  final String? defaultMode;
  /// The ordered list of enforcement rules for the zone.
  final List<GetPrecursorEnforcementRule>? enforcementRules;
  /// Identifier.
  final String? id;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetPrecursorResult].
  /// [defaultMode] The zone-level Precursor enforcement mode applied to requests that do
  /// [enforcementRules] The ordered list of enforcement rules for the zone.
  /// [id] Identifier.
  /// [zoneId] Identifier.
  const GetPrecursorResult({
    this.defaultMode,
    this.enforcementRules,
    this.id,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'enforcementRules': ?(() { final guardedValue = enforcementRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrecursorEnforcementRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'zoneId': ?zoneId,
    };
  }

  factory GetPrecursorResult.fromMap(Map<String, dynamic> map) {
    return GetPrecursorResult(
      defaultMode: (() { final guardedValue = map['defaultMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enforcementRules: (() { final guardedValue = map['enforcementRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrecursorEnforcementRule>(guardedValue, (value) => GetPrecursorEnforcementRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
