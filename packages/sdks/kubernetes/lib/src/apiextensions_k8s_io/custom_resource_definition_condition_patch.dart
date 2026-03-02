// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CustomResourceDefinitionCondition contains details for the current condition of this pod.
class CustomResourceDefinitionConditionPatch {
  /// lastTransitionTime last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// message is a human-readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  final pulumi.Input<int>? observedGeneration;
  /// reason is a unique, one-word, CamelCase reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// status is the status of the condition. Can be True, False, Unknown.
  final pulumi.Input<String>? status;
  /// type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  final pulumi.Input<String>? type;

  /// Creates a new [CustomResourceDefinitionConditionPatch].
  /// [lastTransitionTime] lastTransitionTime last time the condition transitioned from one status to another.
  /// [message] message is a human-readable message indicating details about last transition.
  /// [observedGeneration] observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  /// [reason] reason is a unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] status is the status of the condition. Can be True, False, Unknown.
  /// [type] type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  CustomResourceDefinitionConditionPatch({
    this.lastTransitionTime,
    this.message,
    this.observedGeneration,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'observedGeneration': ?observedGeneration,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory CustomResourceDefinitionConditionPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionConditionPatch(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration'] as int).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

