// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeploymentCondition describes the state of a deployment at a certain point.
class DeploymentConditionAppsV1beta1 {
  /// Last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// The last time this condition was updated.
  final pulumi.Input<String>? lastUpdateTime;
  /// A human readable message indicating details about the transition.
  final pulumi.Input<String>? message;
  /// The reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;
  /// Type of deployment condition.
  final pulumi.Input<String> type;

  /// Creates a new [DeploymentConditionAppsV1beta1].
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [lastUpdateTime] The last time this condition was updated.
  /// [message] A human readable message indicating details about the transition.
  /// [reason] The reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of deployment condition.
  const DeploymentConditionAppsV1beta1({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'lastUpdateTime': ?lastUpdateTime,
      'message': ?message,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory DeploymentConditionAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return DeploymentConditionAppsV1beta1(
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
