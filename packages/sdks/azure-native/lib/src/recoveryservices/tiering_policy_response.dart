// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tiering Policy for a target tier.
/// If the policy is not specified for a given target tier, service retains the existing configured tiering policy for that tier
class TieringPolicyResponse {
  /// Number of days/weeks/months/years to retain backups in current tier before tiering.
  /// Used only if TieringMode is set to TierAfter
  final pulumi.Input<int>? duration;
  /// Retention duration type: days/weeks/months/years
  /// Used only if TieringMode is set to TierAfter
  final pulumi.Input<String>? durationType;
  /// Tiering Mode to control automatic tiering of recovery points. Supported values are:
  /// 1. TierRecommended: Tier all recovery points recommended to be tiered
  /// 2. TierAfter: Tier all recovery points after a fixed period, as specified in duration + durationType below.
  /// 3. DoNotTier: Do not tier any recovery points
  final pulumi.Input<String>? tieringMode;

  /// Creates a new [TieringPolicyResponse].
  /// [duration] Number of days/weeks/months/years to retain backups in current tier before tiering.
  /// [durationType] Retention duration type: days/weeks/months/years
  /// [tieringMode] Tiering Mode to control automatic tiering of recovery points. Supported values are:
  const TieringPolicyResponse({
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

  factory TieringPolicyResponse.fromMap(Map<String, dynamic> map) {
    return TieringPolicyResponse(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      durationType: (() { final guardedValue = map['durationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tieringMode: (() { final guardedValue = map['tieringMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

