// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ReplicationControllerCondition describes the state of a replication controller at a certain point.
class ReplicationControllerCondition {
  /// The last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// A human readable message indicating details about the transition.
  final pulumi.Input<String>? message;
  /// The reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;
  /// Type of replication controller condition.
  final pulumi.Input<String> type;

  /// Creates a new [ReplicationControllerCondition].
  /// [lastTransitionTime] The last time the condition transitioned from one status to another.
  /// [message] A human readable message indicating details about the transition.
  /// [reason] The reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of replication controller condition.
  const ReplicationControllerCondition({
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

  factory ReplicationControllerCondition.fromMap(Map<String, dynamic> map) {
    return ReplicationControllerCondition(
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
