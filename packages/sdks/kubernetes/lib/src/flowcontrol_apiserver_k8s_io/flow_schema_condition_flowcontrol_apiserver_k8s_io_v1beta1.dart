// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FlowSchemaCondition describes conditions for a FlowSchema.
class FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta1 {
  /// `lastTransitionTime` is the last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// `message` is a human-readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// `status` is the status of the condition. Can be True, False, Unknown. Required.
  final pulumi.Input<String>? status;
  /// `type` is the type of the condition. Required.
  final pulumi.Input<String>? type;

  /// Creates a new [FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta1].
  /// [lastTransitionTime] `lastTransitionTime` is the last time the condition transitioned from one status to another.
  /// [message] `message` is a human-readable message indicating details about last transition.
  /// [reason] `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] `status` is the status of the condition. Can be True, False, Unknown. Required.
  /// [type] `type` is the type of the condition. Required.
  FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta1({
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

  factory FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta1(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

