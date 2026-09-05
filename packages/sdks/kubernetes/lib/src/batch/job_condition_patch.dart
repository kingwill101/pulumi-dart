// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JobCondition describes current state of a job.
class JobConditionPatch {
  /// Last time the condition was checked.
  final pulumi.Input<String?>? lastProbeTime;
  /// Last time the condition transit from one status to another.
  final pulumi.Input<String?>? lastTransitionTime;
  /// Human readable message indicating details about last transition.
  final pulumi.Input<String?>? message;
  /// (brief) reason for the condition's last transition.
  final pulumi.Input<String?>? reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String?>? status;
  /// Type of job condition, Complete or Failed.
  final pulumi.Input<String?>? type;

  /// Creates a new [JobConditionPatch].
  /// [lastProbeTime] Last time the condition was checked.
  /// [lastTransitionTime] Last time the condition transit from one status to another.
  /// [message] Human readable message indicating details about last transition.
  /// [reason] (brief) reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of job condition, Complete or Failed.
  const JobConditionPatch({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastProbeTime': ?lastProbeTime,
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory JobConditionPatch.fromMap(Map<String, dynamic> map) {
    return JobConditionPatch(
      lastProbeTime: (() { final guardedValue = map['lastProbeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
