// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
class HorizontalPodAutoscalerCondition {
  /// lastTransitionTime is the last time the condition transitioned from one status to another
  final pulumi.Input<String>? lastTransitionTime;
  /// message is a human-readable explanation containing details about the transition
  final pulumi.Input<String>? message;
  /// reason is the reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// status is the status of the condition (True, False, Unknown)
  final pulumi.Input<String> status;
  /// type describes the current condition
  final pulumi.Input<String> type;

  /// Creates a new [HorizontalPodAutoscalerCondition].
  /// [lastTransitionTime] lastTransitionTime is the last time the condition transitioned from one status to another
  /// [message] message is a human-readable explanation containing details about the transition
  /// [reason] reason is the reason for the condition's last transition.
  /// [status] status is the status of the condition (True, False, Unknown)
  /// [type] type describes the current condition
  HorizontalPodAutoscalerCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory HorizontalPodAutoscalerCondition.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerCondition(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

