// ignore_for_file: unused_element, unnecessary_cast


/// DaemonSetCondition describes the state of a DaemonSet at a certain point.
class DaemonSetConditionPatch {
  /// Last time the condition transitioned from one status to another.
  final String? lastTransitionTime;
  /// A human readable message indicating details about the transition.
  final String? message;
  /// The reason for the condition's last transition.
  final String? reason;
  /// Status of the condition, one of True, False, Unknown.
  final String? status;
  /// Type of DaemonSet condition.
  final String? type;

  /// Creates a new [DaemonSetConditionPatch].
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] A human readable message indicating details about the transition.
  /// [reason] The reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of DaemonSet condition.
  DaemonSetConditionPatch({
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

  factory DaemonSetConditionPatch.fromMap(Map<String, dynamic> map) {
    return DaemonSetConditionPatch(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

