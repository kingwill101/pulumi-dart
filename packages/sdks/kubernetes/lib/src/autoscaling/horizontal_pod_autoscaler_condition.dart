// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
class HorizontalPodAutoscalerCondition {
  /// lastTransitionTime is the last time the condition transitioned from one status to another
  final pulumi.Input<String?>? lastTransitionTime;
  /// message is a human-readable explanation containing details about the transition
  final pulumi.Input<String?>? message;
  /// observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  final pulumi.Input<int?>? observedGeneration;
  /// reason is the reason for the condition's last transition.
  final pulumi.Input<String?>? reason;
  /// status is the status of the condition (True, False, Unknown)
  final pulumi.Input<String> status;
  /// type describes the current condition
  final pulumi.Input<String> type;

  /// Creates a new [HorizontalPodAutoscalerCondition].
  /// [lastTransitionTime] lastTransitionTime is the last time the condition transitioned from one status to another
  /// [message] message is a human-readable explanation containing details about the transition
  /// [observedGeneration] observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  /// [reason] reason is the reason for the condition's last transition.
  /// [status] status is the status of the condition (True, False, Unknown)
  /// [type] type describes the current condition
  const HorizontalPodAutoscalerCondition({
    this.lastTransitionTime,
    this.message,
    this.observedGeneration,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'observedGeneration': ?observedGeneration,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory HorizontalPodAutoscalerCondition.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerCondition(
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
