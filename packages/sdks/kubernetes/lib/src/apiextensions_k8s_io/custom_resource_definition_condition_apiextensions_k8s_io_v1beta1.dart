// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CustomResourceDefinitionCondition contains details for the current condition of this pod.
class CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1 {
  /// lastTransitionTime last time the condition transitioned from one status to another.
  final pulumi.Input<String?>? lastTransitionTime;
  /// message is a human-readable message indicating details about last transition.
  final pulumi.Input<String?>? message;
  /// reason is a unique, one-word, CamelCase reason for the condition's last transition.
  final pulumi.Input<String?>? reason;
  /// status is the status of the condition. Can be True, False, Unknown.
  final pulumi.Input<String> status;
  /// type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  final pulumi.Input<String> type;

  /// Creates a new [CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1].
  /// [lastTransitionTime] lastTransitionTime last time the condition transitioned from one status to another.
  /// [message] message is a human-readable message indicating details about last transition.
  /// [reason] reason is a unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] status is the status of the condition. Can be True, False, Unknown.
  /// [type] type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  const CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1(
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
