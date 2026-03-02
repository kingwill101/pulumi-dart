// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ReplicaSetCondition describes the state of a replica set at a certain point.
class ReplicaSetCondition {
  /// The last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// A human readable message indicating details about the transition.
  final pulumi.Input<String>? message;
  /// The reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;
  /// Type of replica set condition.
  final pulumi.Input<String> type;

  /// Creates a new [ReplicaSetCondition].
  /// [lastTransitionTime] The last time the condition transitioned from one status to another.
  /// [message] A human readable message indicating details about the transition.
  /// [reason] The reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of replica set condition.
  ReplicaSetCondition({
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

  factory ReplicaSetCondition.fromMap(Map<String, dynamic> map) {
    return ReplicaSetCondition(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

