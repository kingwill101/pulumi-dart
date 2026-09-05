// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PriorityLevelConfigurationCondition defines the condition of priority level.
class PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1 {
  /// `lastTransitionTime` is the last time the condition transitioned from one status to another.
  final pulumi.Input<String?>? lastTransitionTime;
  /// `message` is a human-readable message indicating details about last transition.
  final pulumi.Input<String?>? message;
  /// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  final pulumi.Input<String?>? reason;
  /// `status` is the status of the condition. Can be True, False, Unknown. Required.
  final pulumi.Input<String?>? status;
  /// `type` is the type of the condition. Required.
  final pulumi.Input<String?>? type;

  /// Creates a new [PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1].
  /// [lastTransitionTime] `lastTransitionTime` is the last time the condition transitioned from one status to another.
  /// [message] `message` is a human-readable message indicating details about last transition.
  /// [reason] `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] `status` is the status of the condition. Can be True, False, Unknown. Required.
  /// [type] `type` is the type of the condition. Required.
  const PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1({
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

  factory PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1(
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
