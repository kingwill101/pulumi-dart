// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'precursor_enforcement_rule.dart';

/// Input properties used for looking up and filtering Precursor resources.
class PrecursorState {
  /// The zone-level Precursor enforcement mode applied to requests that do
  /// not match a more specific enforcement rule.
  /// Available values: "off", "min-friction", "max-security".
  final pulumi.Input<String?>? defaultMode;
  /// The ordered list of enforcement rules for the zone.
  final pulumi.Input<List<PrecursorEnforcementRule>?>? enforcementRules;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [PrecursorState].
  /// [defaultMode] The zone-level Precursor enforcement mode applied to requests that do
  /// [enforcementRules] The ordered list of enforcement rules for the zone.
  /// [zoneId] Identifier.
  const PrecursorState({
    this.defaultMode,
    this.enforcementRules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'enforcementRules': ?pulumi.Input.mapOptionalInputValue<List<PrecursorEnforcementRule>, List<Map<String, dynamic>>>(enforcementRules, (value) => pulumi.Input.encodeList<PrecursorEnforcementRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory PrecursorState.fromMap(Map<String, dynamic> map) {
    return PrecursorState(
      defaultMode: (() { final guardedValue = map['defaultMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforcementRules: (() { final guardedValue = map['enforcementRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrecursorEnforcementRule>(guardedValue, (value) => PrecursorEnforcementRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
