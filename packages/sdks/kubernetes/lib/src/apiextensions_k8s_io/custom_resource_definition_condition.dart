// ignore_for_file: unused_element, unnecessary_cast


/// CustomResourceDefinitionCondition contains details for the current condition of this pod.
class CustomResourceDefinitionCondition {
  /// lastTransitionTime last time the condition transitioned from one status to another.
  final String? lastTransitionTime;
  /// message is a human-readable message indicating details about last transition.
  final String? message;
  /// observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  final int? observedGeneration;
  /// reason is a unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;
  /// status is the status of the condition. Can be True, False, Unknown.
  final String status;
  /// type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  final String type;

  /// Creates a new [CustomResourceDefinitionCondition].
  /// [lastTransitionTime] lastTransitionTime last time the condition transitioned from one status to another.
  /// [message] message is a human-readable message indicating details about last transition.
  /// [observedGeneration] observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  /// [reason] reason is a unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] status is the status of the condition. Can be True, False, Unknown.
  /// [type] type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  CustomResourceDefinitionCondition({
    this.lastTransitionTime,
    this.message,
    this.observedGeneration,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'observedGeneration': ?observedGeneration,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory CustomResourceDefinitionCondition.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionCondition(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

