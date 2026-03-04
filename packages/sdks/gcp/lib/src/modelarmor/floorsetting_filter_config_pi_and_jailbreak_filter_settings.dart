// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FloorsettingFilterConfigPiAndJailbreakFilterSettings {
  /// Possible values:
  /// LOW_AND_ABOVE
  /// MEDIUM_AND_ABOVE
  /// HIGH
  final pulumi.Input<String>? confidenceLevel;

  /// Tells whether Prompt injection and Jailbreak filter is enabled or
  /// disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final pulumi.Input<String>? filterEnforcement;

  /// Creates a new [FloorsettingFilterConfigPiAndJailbreakFilterSettings].
  /// [confidenceLevel] Possible values:
  /// [filterEnforcement] Tells whether Prompt injection and Jailbreak filter is enabled or
  FloorsettingFilterConfigPiAndJailbreakFilterSettings({
    this.confidenceLevel,
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceLevel': ?confidenceLevel,
      'filterEnforcement': ?filterEnforcement,
    };
  }

  factory FloorsettingFilterConfigPiAndJailbreakFilterSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return FloorsettingFilterConfigPiAndJailbreakFilterSettings(
      confidenceLevel: (() {
        final guardedValue = map['confidenceLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filterEnforcement: (() {
        final guardedValue = map['filterEnforcement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
