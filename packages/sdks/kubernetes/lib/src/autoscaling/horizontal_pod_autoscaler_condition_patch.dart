// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
class HorizontalPodAutoscalerConditionPatch {
  /// lastTransitionTime is the last time the condition transitioned from one status to another
  final pulumi.Input<String>? lastTransitionTime;
  /// message is a human-readable explanation containing details about the transition
  final pulumi.Input<String>? message;
  /// reason is the reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// status is the status of the condition (True, False, Unknown)
  final pulumi.Input<String>? status;
  /// type describes the current condition
  final pulumi.Input<String>? type;

  /// Creates a new [HorizontalPodAutoscalerConditionPatch].
  /// [lastTransitionTime] lastTransitionTime is the last time the condition transitioned from one status to another
  /// [message] message is a human-readable explanation containing details about the transition
  /// [reason] reason is the reason for the condition's last transition.
  /// [status] status is the status of the condition (True, False, Unknown)
  /// [type] type describes the current condition
  HorizontalPodAutoscalerConditionPatch({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory HorizontalPodAutoscalerConditionPatch.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerConditionPatch(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

