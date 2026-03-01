// ignore_for_file: unused_element, unnecessary_cast


/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
class HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2 {
  /// lastTransitionTime is the last time the condition transitioned from one status to another
  final String? lastTransitionTime;
  /// message is a human-readable explanation containing details about the transition
  final String? message;
  /// reason is the reason for the condition's last transition.
  final String? reason;
  /// status is the status of the condition (True, False, Unknown)
  final String? status;
  /// type describes the current condition
  final String? type;

  /// Creates a new [HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2].
  /// [lastTransitionTime] lastTransitionTime is the last time the condition transitioned from one status to another
  /// [message] message is a human-readable explanation containing details about the transition
  /// [reason] reason is the reason for the condition's last transition.
  /// [status] status is the status of the condition (True, False, Unknown)
  /// [type] type describes the current condition
  HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2({
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

  factory HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

