// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolCondition {
  /// (Output)
  /// A reason for the execution condition.
  final pulumi.Input<String>? executionReason;
  /// (Output)
  /// Last time the condition transitioned from one status to another.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? lastTransitionTime;
  /// (Output)
  /// Human readable message indicating details about the current status.
  final pulumi.Input<String>? message;
  /// (Output)
  /// A common (workerPool-level) reason for this condition.
  final pulumi.Input<String>? reason;
  /// (Output)
  /// A reason for the revision condition.
  final pulumi.Input<String>? revisionReason;
  /// (Output)
  /// How to interpret failures of this condition, one of Error, Warning, Info
  final pulumi.Input<String>? severity;
  /// (Output)
  /// State of the condition.
  final pulumi.Input<String>? state;
  /// (Output)
  /// The allocation type for this instance split.
  final pulumi.Input<String>? type;

  /// Creates a new [WorkerPoolCondition].
  /// [executionReason] (Output)
  /// [lastTransitionTime] (Output)
  /// [message] (Output)
  /// [reason] (Output)
  /// [revisionReason] (Output)
  /// [severity] (Output)
  /// [state] (Output)
  /// [type] (Output)
  WorkerPoolCondition({
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

  factory WorkerPoolCondition.fromMap(Map<String, dynamic> map) {
    return WorkerPoolCondition(
      executionReason: map['executionReason'] == null ? null : (map['executionReason'] as String).input(),
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      revisionReason: map['revisionReason'] == null ? null : (map['revisionReason'] as String).input(),
      severity: map['severity'] == null ? null : (map['severity'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

