// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTerminalCondition {
  /// A reason for the execution condition.
  final pulumi.Input<String> executionReason;
  /// Last time the condition transitioned from one status to another.
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

  /// Creates a new [GetServiceTerminalCondition].
  /// [executionReason] A reason for the execution condition.
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] Human readable message indicating details about the current status.
  /// [reason] A common (service-level) reason for this condition.
  /// [revisionReason] A reason for the revision condition.
  /// [severity] How to interpret failures of this condition, one of Error, Warning, Info
  /// [state] State of the condition.
  /// [type] type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * "Ready": True when the Resource is ready.
  GetServiceTerminalCondition({
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

  factory GetServiceTerminalCondition.fromMap(Map<String, dynamic> map) {
    return GetServiceTerminalCondition(
      executionReason: (map['executionReason'] as String).input(),
      lastTransitionTime: (map['lastTransitionTime'] as String).input(),
      message: (map['message'] as String).input(),
      reason: (map['reason'] as String).input(),
      revisionReason: (map['revisionReason'] as String).input(),
      severity: (map['severity'] as String).input(),
      state: (map['state'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

