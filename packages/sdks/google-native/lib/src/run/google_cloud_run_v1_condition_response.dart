// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Conditions show the status of reconciliation progress on a given resource. Most resource use a top-level condition type "Ready" or "Completed" to show overall status with other conditions to checkpoint each stage of reconciliation. Note that if metadata.Generation does not equal status.ObservedGeneration, the conditions shown may not be relevant for the current spec.
class GoogleCloudRunV1ConditionResponse {
  /// Optional. Last time the condition transitioned from one status to another.
  final pulumi.Input<String> lastTransitionTime;
  /// Optional. Human readable message indicating details about the current status.
  final pulumi.Input<String> message;
  /// Optional. One-word CamelCase reason for the condition's last transition. These are intended to be stable, unique values which the client may use to trigger error handling logic, whereas messages which may be changed later by the server.
  final pulumi.Input<String> reason;
  /// Optional. How to interpret this condition. One of Error, Warning, or Info. Conditions of severity Info do not contribute to resource readiness.
  final pulumi.Input<String> severity;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;
  /// type is used to communicate the status of the reconciliation process. Types common to all resources include: * "Ready" or "Completed": True when the Resource is ready.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudRunV1ConditionResponse].
  /// [lastTransitionTime] Optional. Last time the condition transitioned from one status to another.
  /// [message] Optional. Human readable message indicating details about the current status.
  /// [reason] Optional. One-word CamelCase reason for the condition's last transition. These are intended to be stable, unique values which the client may use to trigger error handling logic, whereas messages which may be changed later by the server.
  /// [severity] Optional. How to interpret this condition. One of Error, Warning, or Info. Conditions of severity Info do not contribute to resource readiness.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] type is used to communicate the status of the reconciliation process. Types common to all resources include: * "Ready" or "Completed": True when the Resource is ready.
  const GoogleCloudRunV1ConditionResponse({
    required this.lastTransitionTime,
    required this.message,
    required this.reason,
    required this.severity,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': lastTransitionTime,
      'message': message,
      'reason': reason,
      'severity': severity,
      'status': status,
      'type': type,
    };
  }

  factory GoogleCloudRunV1ConditionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV1ConditionResponse(
      lastTransitionTime: pulumi.Input.fromValue(map['lastTransitionTime'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
