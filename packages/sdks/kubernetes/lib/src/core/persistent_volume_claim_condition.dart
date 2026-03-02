// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PersistentVolumeClaimCondition contains details about state of pvc
class PersistentVolumeClaimCondition {
  /// lastProbeTime is the time we probed the condition.
  final pulumi.Input<String>? lastProbeTime;
  /// lastTransitionTime is the time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// message is the human-readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "Resizing" that means the underlying persistent volume is being resized.
  final pulumi.Input<String>? reason;
  /// Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=state%20of%20pvc-,conditions.status,-(string)%2C%20required
  final pulumi.Input<String> status;
  /// Type is the type of the condition. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=set%20to%20%27ResizeStarted%27.-,PersistentVolumeClaimCondition,-contains%20details%20about
  final pulumi.Input<String> type;

  /// Creates a new [PersistentVolumeClaimCondition].
  /// [lastProbeTime] lastProbeTime is the time we probed the condition.
  /// [lastTransitionTime] lastTransitionTime is the time the condition transitioned from one status to another.
  /// [message] message is the human-readable message indicating details about last transition.
  /// [reason] reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "Resizing" that means the underlying persistent volume is being resized.
  /// [status] Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=state%20of%20pvc-,conditions.status,-(string)%2C%20required
  /// [type] Type is the type of the condition. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=set%20to%20%27ResizeStarted%27.-,PersistentVolumeClaimCondition,-contains%20details%20about
  PersistentVolumeClaimCondition({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastProbeTime': ?lastProbeTime,
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory PersistentVolumeClaimCondition.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeClaimCondition(
      lastProbeTime: map['lastProbeTime'] == null ? null : (map['lastProbeTime']! as String).input(),
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

