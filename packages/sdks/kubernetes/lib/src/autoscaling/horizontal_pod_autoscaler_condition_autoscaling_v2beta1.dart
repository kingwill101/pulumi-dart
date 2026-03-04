// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
class HorizontalPodAutoscalerConditionAutoscalingV2beta1 {
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

  /// Creates a new [HorizontalPodAutoscalerConditionAutoscalingV2beta1].
  /// [lastTransitionTime] lastTransitionTime is the last time the condition transitioned from one status to another
  /// [message] message is a human-readable explanation containing details about the transition
  /// [reason] reason is the reason for the condition's last transition.
  /// [status] status is the status of the condition (True, False, Unknown)
  /// [type] type describes the current condition
  HorizontalPodAutoscalerConditionAutoscalingV2beta1({
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

  factory HorizontalPodAutoscalerConditionAutoscalingV2beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HorizontalPodAutoscalerConditionAutoscalingV2beta1(
      lastTransitionTime: (() {
        final guardedValue = map['lastTransitionTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reason: (() {
        final guardedValue = map['reason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
