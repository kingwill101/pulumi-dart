// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitOperationCondition {
  /// (Output)
  /// Last time the condition transited from one status to another.
  final pulumi.Input<String>? lastTransitionTime;

  /// (Output)
  /// Human readable message indicating details about the last transition.
  final pulumi.Input<String>? message;

  /// (Output)
  /// Brief reason for the condition's last transition.
  final pulumi.Input<String>? reason;

  /// (Output)
  /// Status of the condition.
  /// Possible values:
  /// STATUS_UNKNOWN
  /// STATUS_TRUE
  /// STATUS_FALSE
  final pulumi.Input<String>? status;

  /// (Output)
  /// Type of the condition.
  /// Possible values:
  /// TYPE_SCHEDULED
  /// TYPE_RUNNING
  /// TYPE_SUCCEEDED
  /// TYPE_CANCELLED
  final pulumi.Input<String>? type;

  /// Creates a new [UnitOperationCondition].
  /// [lastTransitionTime] (Output)
  /// [message] (Output)
  /// [reason] (Output)
  /// [status] (Output)
  /// [type] (Output)
  UnitOperationCondition({
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

  factory UnitOperationCondition.fromMap(Map<String, dynamic> map) {
    return UnitOperationCondition(
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
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
