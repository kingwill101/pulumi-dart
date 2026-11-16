// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_precursor_rule.dart';

/// Result data returned by getPrecursor.
class GetPrecursorResult {
  /// Identifier.
  final String? id;
  /// Controls Precursor detection for the zone. `off` disables detection,
  /// `monitor` records detections without affecting bot scores, and `arm`
  /// allows detections to affect bot scores.
  /// Available values: "off", "monitor", "arm".
  final String? mode;
  /// The ordered list of Precursor rules for the zone.
  final List<GetPrecursorRule>? rules;
  /// Whether Precursor shows an interstitial when it takes action on a
  /// request.
  final bool? showInterstitial;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetPrecursorResult].
  /// [id] Identifier.
  /// [mode] Controls Precursor detection for the zone. `off` disables detection,
  /// [rules] The ordered list of Precursor rules for the zone.
  /// [showInterstitial] Whether Precursor shows an interstitial when it takes action on a
  /// [zoneId] Identifier.
  const GetPrecursorResult({
    this.id,
    this.mode,
    this.rules,
    this.showInterstitial,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'mode': ?mode,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrecursorRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'showInterstitial': ?showInterstitial,
      'zoneId': ?zoneId,
    };
  }

  factory GetPrecursorResult.fromMap(Map<String, dynamic> map) {
    return GetPrecursorResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrecursorRule>(guardedValue, (value) => GetPrecursorRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      showInterstitial: (() { final guardedValue = map['showInterstitial']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
