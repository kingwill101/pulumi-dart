// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMTieringPolicyArchivedRestorePoint {
  /// The number of days/weeks/months/years to retain backups in current tier before tiering.
  final pulumi.Input<int?>? duration;
  /// The retention duration type. Possible values are `Days`, `Weeks`, `Months` and `Years`.
  final pulumi.Input<String?>? durationType;
  /// The tiering mode to control automatic tiering of recovery points. Possible values are `TierAfter` and `TierRecommended`.
  final pulumi.Input<String> mode;

  /// Creates a new [PolicyVMTieringPolicyArchivedRestorePoint].
  /// [duration] The number of days/weeks/months/years to retain backups in current tier before tiering.
  /// [durationType] The retention duration type. Possible values are `Days`, `Weeks`, `Months` and `Years`.
  /// [mode] The tiering mode to control automatic tiering of recovery points. Possible values are `TierAfter` and `TierRecommended`.
  const PolicyVMTieringPolicyArchivedRestorePoint({
    this.duration,
    this.durationType,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'durationType': ?durationType,
      'mode': mode,
    };
  }

  factory PolicyVMTieringPolicyArchivedRestorePoint.fromMap(Map<String, dynamic> map) {
    return PolicyVMTieringPolicyArchivedRestorePoint(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      durationType: (() { final guardedValue = map['durationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
