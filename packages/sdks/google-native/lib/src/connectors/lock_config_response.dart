// ignore_for_file: unused_element, unnecessary_cast


/// Determines whether or no a connection is locked. If locked, a reason must be specified.
class LockConfigResponse {
  /// Indicates whether or not the connection is locked.
  final bool locked;
  /// Describes why a connection is locked.
  final String reason;

  /// Creates a new [LockConfigResponse].
  /// [locked] Indicates whether or not the connection is locked.
  /// [reason] Describes why a connection is locked.
  LockConfigResponse({
    required this.locked,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locked': locked,
      'reason': reason,
    };
  }

  factory LockConfigResponse.fromMap(Map<String, dynamic> map) {
    return LockConfigResponse(
      locked: map['locked'] as bool,
      reason: map['reason'] as String,
    );
  }
}

