// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PersistentVolumeStatus is the current status of a persistent volume.
class PersistentVolumeStatus {
  /// lastPhaseTransitionTime is the time the phase transitioned from one to another and automatically resets to current time everytime a volume phase transitions.
  final pulumi.Input<String>? lastPhaseTransitionTime;
  /// message is a human-readable message indicating details about why the volume is in this state.
  final pulumi.Input<String>? message;
  /// phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
  final pulumi.Input<String>? phase;
  /// reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
  final pulumi.Input<String>? reason;

  /// Creates a new [PersistentVolumeStatus].
  /// [lastPhaseTransitionTime] lastPhaseTransitionTime is the time the phase transitioned from one to another and automatically resets to current time everytime a volume phase transitions.
  /// [message] message is a human-readable message indicating details about why the volume is in this state.
  /// [phase] phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
  /// [reason] reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
  const PersistentVolumeStatus({
    this.lastPhaseTransitionTime,
    this.message,
    this.phase,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastPhaseTransitionTime': ?lastPhaseTransitionTime,
      'message': ?message,
      'phase': ?phase,
      'reason': ?reason,
    };
  }

  factory PersistentVolumeStatus.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeStatus(
      lastPhaseTransitionTime: (() { final guardedValue = map['lastPhaseTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

