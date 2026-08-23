// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceCondition {
  /// A reason for the execution condition.
  final pulumi.Input<String> executionReason;
  /// Last time the condition transitioned from one status to another.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> lastTransitionTime;
  /// Human readable message indicating details about the current status.
  final pulumi.Input<String> message;
  /// A common (service-level) reason for this condition.
  final pulumi.Input<String> reason;
  /// A reason for the revision condition.
  final pulumi.Input<String> revisionReason;
  /// How to interpret failures of this condition, one of Error, Warning, Info
  final pulumi.Input<String> severity;
  /// State of the condition.
  final pulumi.Input<String> state;
  /// type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * "Ready": True when the Resource is ready.
  final pulumi.Input<String> type;

  /// Creates a new [GetServiceCondition].
  /// [executionReason] A reason for the execution condition.
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] Human readable message indicating details about the current status.
  /// [reason] A common (service-level) reason for this condition.
  /// [revisionReason] A reason for the revision condition.
  /// [severity] How to interpret failures of this condition, one of Error, Warning, Info
  /// [state] State of the condition.
  /// [type] type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * "Ready": True when the Resource is ready.
  const GetServiceCondition({
    required this.executionReason,
    required this.lastTransitionTime,
    required this.message,
    required this.reason,
    required this.revisionReason,
    required this.severity,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionReason': executionReason,
      'lastTransitionTime': lastTransitionTime,
      'message': message,
      'reason': reason,
      'revisionReason': revisionReason,
      'severity': severity,
      'state': state,
      'type': type,
    };
  }

  factory GetServiceCondition.fromMap(Map<String, dynamic> map) {
    return GetServiceCondition(
      executionReason: pulumi.Input.fromValue(map['executionReason'] as String),
      lastTransitionTime: pulumi.Input.fromValue(map['lastTransitionTime'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      revisionReason: pulumi.Input.fromValue(map['revisionReason'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
