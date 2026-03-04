// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DaemonSetCondition describes the state of a DaemonSet at a certain point.
class DaemonSetConditionAppsV1beta2 {
  /// Last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;

  /// A human readable message indicating details about the transition.
  final pulumi.Input<String>? message;

  /// The reason for the condition's last transition.
  final pulumi.Input<String>? reason;

  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;

  /// Type of DaemonSet condition.
  final pulumi.Input<String> type;

  /// Creates a new [DaemonSetConditionAppsV1beta2].
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] A human readable message indicating details about the transition.
  /// [reason] The reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of DaemonSet condition.
  DaemonSetConditionAppsV1beta2({
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

  factory DaemonSetConditionAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DaemonSetConditionAppsV1beta2(
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
