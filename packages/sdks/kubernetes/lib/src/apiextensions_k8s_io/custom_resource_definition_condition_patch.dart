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
  const CustomResourceDefinitionConditionPatch({
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
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
