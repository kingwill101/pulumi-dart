// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeCondition contains condition information for a node.
class NodeConditionPatch {
  /// Last time we got an update on a given condition.
  final pulumi.Input<String>? lastHeartbeatTime;
  /// Last time the condition transit from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// Human readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// (brief) reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String>? status;
  /// Type of node condition.
  final pulumi.Input<String>? type;

  /// Creates a new [NodeConditionPatch].
  /// [lastHeartbeatTime] Last time we got an update on a given condition.
  /// [lastTransitionTime] Last time the condition transit from one status to another.
  /// [message] Human readable message indicating details about last transition.
  /// [reason] (brief) reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of node condition.
  NodeConditionPatch({
    this.lastHeartbeatTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastHeartbeatTime': ?lastHeartbeatTime,
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory NodeConditionPatch.fromMap(Map<String, dynamic> map) {
    return NodeConditionPatch(
      lastHeartbeatTime: map['lastHeartbeatTime'] == null ? null : (map['lastHeartbeatTime']! as String).input(),
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

