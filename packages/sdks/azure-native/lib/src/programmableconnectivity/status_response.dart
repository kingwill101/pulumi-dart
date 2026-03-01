// ignore_for_file: unused_element, unnecessary_cast


/// Description of the current status of the OperatorApiConnection resource.
class StatusResponse {
  /// Explanation of the current state of the OperatorApiConnection resource.
  final String? reason;
  /// Current state of the OperatorApiConnection resource.
  final String? state;

  /// Creates a new [StatusResponse].
  /// [reason] Explanation of the current state of the OperatorApiConnection resource.
  /// [state] Current state of the OperatorApiConnection resource.
  StatusResponse({
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
      reason: map['reason'] == null ? null : map['reason'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

