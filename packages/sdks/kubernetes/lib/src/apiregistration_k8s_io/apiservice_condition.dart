// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// APIServiceCondition describes the state of an APIService at a particular point
class APIServiceCondition {
  /// Last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;

  /// Human-readable message indicating details about last transition.
  final pulumi.Input<String>? message;

  /// Unique, one-word, CamelCase reason for the condition's last transition.
  final pulumi.Input<String>? reason;

  /// Status is the status of the condition. Can be True, False, Unknown.
  final pulumi.Input<String> status;

  /// Type is the type of the condition.
  final pulumi.Input<String> type;

  /// Creates a new [APIServiceCondition].
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] Human-readable message indicating details about last transition.
  /// [reason] Unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] Status is the status of the condition. Can be True, False, Unknown.
  /// [type] Type is the type of the condition.
  APIServiceCondition({
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

  factory APIServiceCondition.fromMap(Map<String, dynamic> map) {
    return APIServiceCondition(
      lastTransitionTime: (() {
        final guardedValue = map['lastTransitionTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reason: (() {
        final guardedValue = map['reason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
