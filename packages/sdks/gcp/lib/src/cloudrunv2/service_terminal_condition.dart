// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTerminalCondition {
  /// (Output)
  /// A reason for the execution condition.
  final pulumi.Input<String?>? executionReason;
  /// (Output)
  /// Last time the condition transitioned from one status to another.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? lastTransitionTime;
  /// (Output)
  /// Human readable message indicating details about the current status.
  final pulumi.Input<String?>? message;
  /// (Output)
  /// A common (service-level) reason for this condition.
  final pulumi.Input<String?>? reason;
  /// (Output)
  /// A reason for the revision condition.
  final pulumi.Input<String?>? revisionReason;
  /// (Output)
  /// How to interpret failures of this condition, one of Error, Warning, Info
  final pulumi.Input<String?>? severity;
  /// (Output)
  /// State of the condition.
  final pulumi.Input<String?>? state;
  /// (Output)
  /// The allocation type for this traffic target.
  final pulumi.Input<String?>? type;

  /// Creates a new [ServiceTerminalCondition].
  /// [executionReason] (Output)
  /// [lastTransitionTime] (Output)
  /// [message] (Output)
  /// [reason] (Output)
  /// [revisionReason] (Output)
  /// [severity] (Output)
  /// [state] (Output)
  /// [type] (Output)
  const ServiceTerminalCondition({
    this.executionReason,
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.revisionReason,
    this.severity,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionReason': ?executionReason,
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'revisionReason': ?revisionReason,
      'severity': ?severity,
      'state': ?state,
      'type': ?type,
    };
  }

  factory ServiceTerminalCondition.fromMap(Map<String, dynamic> map) {
    return ServiceTerminalCondition(
      executionReason: (() { final guardedValue = map['executionReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionReason: (() { final guardedValue = map['revisionReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
