// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tiering Policy for a target tier.
/// If the policy is not specified for a given target tier, service retains the existing configured tiering policy for that tier
class TieringPolicy {
  /// Number of days/weeks/months/years to retain backups in current tier before tiering.
  /// Used only if TieringMode is set to TierAfter
  final pulumi.Input<int?>? duration;
  /// Retention duration type: days/weeks/months/years
  /// Used only if TieringMode is set to TierAfter
  final pulumi.Input<dynamic>? durationType;
  /// Tiering Mode to control automatic tiering of recovery points. Supported values are:
  /// 1. TierRecommended: Tier all recovery points recommended to be tiered
  /// 2. TierAfter: Tier all recovery points after a fixed period, as specified in duration + durationType below.
  /// 3. DoNotTier: Do not tier any recovery points
  final pulumi.Input<dynamic>? tieringMode;

  /// Creates a new [TieringPolicy].
  /// [duration] Number of days/weeks/months/years to retain backups in current tier before tiering.
  /// [durationType] Retention duration type: days/weeks/months/years
  /// [tieringMode] Tiering Mode to control automatic tiering of recovery points. Supported values are:
  const TieringPolicy({
    this.duration,
    this.durationType,
    this.tieringMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'durationType': ?durationType,
      'tieringMode': ?tieringMode,
    };
  }

  factory TieringPolicy.fromMap(Map<String, dynamic> map) {
    return TieringPolicy(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      durationType: (() { final guardedValue = map['durationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tieringMode: (() { final guardedValue = map['tieringMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
