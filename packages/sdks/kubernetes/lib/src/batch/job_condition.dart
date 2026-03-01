// ignore_for_file: unused_element, unnecessary_cast


/// JobCondition describes current state of a job.
class JobCondition {
  /// Last time the condition was checked.
  final String? lastProbeTime;
  /// Last time the condition transit from one status to another.
  final String? lastTransitionTime;
  /// Human readable message indicating details about last transition.
  final String? message;
  /// (brief) reason for the condition's last transition.
  final String? reason;
  /// Status of the condition, one of True, False, Unknown.
  final String status;
  /// Type of job condition, Complete or Failed.
  final String type;

  /// Creates a new [JobCondition].
  /// [lastProbeTime] Last time the condition was checked.
  /// [lastTransitionTime] Last time the condition transit from one status to another.
  /// [message] Human readable message indicating details about last transition.
  /// [reason] (brief) reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of job condition, Complete or Failed.
  JobCondition({
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

  factory JobCondition.fromMap(Map<String, dynamic> map) {
    return JobCondition(
      lastProbeTime: map['lastProbeTime'] == null ? null : map['lastProbeTime'] as String,
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

