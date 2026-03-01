// ignore_for_file: unused_element, unnecessary_cast


/// PersistentVolumeClaimCondition contains details about state of pvc
class PersistentVolumeClaimConditionPatch {
  /// lastProbeTime is the time we probed the condition.
  final String? lastProbeTime;
  /// lastTransitionTime is the time the condition transitioned from one status to another.
  final String? lastTransitionTime;
  /// message is the human-readable message indicating details about last transition.
  final String? message;
  /// reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "Resizing" that means the underlying persistent volume is being resized.
  final String? reason;
  /// Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=state%20of%20pvc-,conditions.status,-(string)%2C%20required
  final String? status;
  /// Type is the type of the condition. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=set%20to%20%27ResizeStarted%27.-,PersistentVolumeClaimCondition,-contains%20details%20about
  final String? type;

  /// Creates a new [PersistentVolumeClaimConditionPatch].
  /// [lastProbeTime] lastProbeTime is the time we probed the condition.
  /// [lastTransitionTime] lastTransitionTime is the time the condition transitioned from one status to another.
  /// [message] message is the human-readable message indicating details about last transition.
  /// [reason] reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "Resizing" that means the underlying persistent volume is being resized.
  /// [status] Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=state%20of%20pvc-,conditions.status,-(string)%2C%20required
  /// [type] Type is the type of the condition. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=set%20to%20%27ResizeStarted%27.-,PersistentVolumeClaimCondition,-contains%20details%20about
  PersistentVolumeClaimConditionPatch({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastProbeTime': ?lastProbeTime,
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory PersistentVolumeClaimConditionPatch.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeClaimConditionPatch(
      lastProbeTime: map['lastProbeTime'] == null ? null : map['lastProbeTime'] as String,
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

