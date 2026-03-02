// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterStatusCondition {
  /// (Output)
  /// Last time the condition transit from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// Human-readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// (Output)
  /// A human-readable message of the check failure.
  final pulumi.Input<String>? reason;
  /// (Output)
  /// The lifecycle state of the condition.
  final pulumi.Input<String>? state;
  /// Type of the condition.
  /// (e.g., ClusterRunning, NodePoolRunning or ServerSidePreflightReady)
  final pulumi.Input<String>? type;

  /// Creates a new [BareMetalAdminClusterStatusCondition].
  /// [lastTransitionTime] (Output)
  /// [message] Human-readable message indicating details about last transition.
  /// [reason] (Output)
  /// [state] (Output)
  /// [type] Type of the condition.
  BareMetalAdminClusterStatusCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'state': ?state,
      'type': ?type,
    };
  }

  factory BareMetalAdminClusterStatusCondition.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterStatusCondition(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

