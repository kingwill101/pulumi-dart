// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'precursor_rule.dart';

/// Input properties used for looking up and filtering Precursor resources.
class PrecursorState {
  /// Controls Precursor detection for the zone. `off` disables detection,
  /// `monitor` records detections without affecting bot scores, and `arm`
  /// allows detections to affect bot scores.
  /// Available values: "off", "monitor", "arm".
  final pulumi.Input<String?>? mode;
  /// The ordered list of Precursor rules for the zone.
  final pulumi.Input<List<PrecursorRule>?>? rules;
  /// Whether Precursor shows an interstitial when it takes action on a
  /// request.
  final pulumi.Input<bool?>? showInterstitial;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [PrecursorState].
  /// [mode] Controls Precursor detection for the zone. `off` disables detection,
  /// [rules] The ordered list of Precursor rules for the zone.
  /// [showInterstitial] Whether Precursor shows an interstitial when it takes action on a
  /// [zoneId] Identifier.
  const PrecursorState({
    this.mode,
    this.rules,
    this.showInterstitial,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PrecursorRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PrecursorRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'showInterstitial': ?showInterstitial,
      'zoneId': ?zoneId,
    };
  }

  factory PrecursorState.fromMap(Map<String, dynamic> map) {
    return PrecursorState(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrecursorRule>(guardedValue, (value) => PrecursorRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      showInterstitial: (() { final guardedValue = map['showInterstitial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
