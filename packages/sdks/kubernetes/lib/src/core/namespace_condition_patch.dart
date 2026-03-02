// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamespaceCondition contains details about state of namespace.
class NamespaceConditionPatch {
  /// Last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// Human-readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// Unique, one-word, CamelCase reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String>? status;
  /// Type of namespace controller condition.
  final pulumi.Input<String>? type;

  /// Creates a new [NamespaceConditionPatch].
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] Human-readable message indicating details about last transition.
  /// [reason] Unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of namespace controller condition.
  NamespaceConditionPatch({
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

  factory NamespaceConditionPatch.fromMap(Map<String, dynamic> map) {
    return NamespaceConditionPatch(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

