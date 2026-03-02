// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JobCondition describes current state of a job.
class JobConditionPatch {
  /// Last time the condition was checked.
  final pulumi.Input<String>? lastProbeTime;
  /// Last time the condition transit from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// Human readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// (brief) reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String>? status;
  /// Type of job condition, Complete or Failed.
  final pulumi.Input<String>? type;

  /// Creates a new [JobConditionPatch].
  /// [lastProbeTime] Last time the condition was checked.
  /// [lastTransitionTime] Last time the condition transit from one status to another.
  /// [message] Human readable message indicating details about last transition.
  /// [reason] (brief) reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of job condition, Complete or Failed.
  JobConditionPatch({
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
      lastProbeTime: map['lastProbeTime'] == null ? null : (map['lastProbeTime']! as String).input(),
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

