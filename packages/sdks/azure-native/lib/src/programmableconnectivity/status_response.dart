// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of the current status of the OperatorApiConnection resource.
class StatusResponse {
  /// Explanation of the current state of the OperatorApiConnection resource.
  final pulumi.Input<String?>? reason;
  /// Current state of the OperatorApiConnection resource.
  final pulumi.Input<String?>? state;

  /// Creates a new [StatusResponse].
  /// [reason] Explanation of the current state of the OperatorApiConnection resource.
  /// [state] Current state of the OperatorApiConnection resource.
  const StatusResponse({
    this.reason,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': ?reason,
      'state': ?state,
    };
  }

  factory StatusResponse.fromMap(Map<String, dynamic> map) {
    return StatusResponse(
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
