// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines whether or no a connection is locked. If locked, a reason must be specified.
class LockConfigResponse {
  /// Indicates whether or not the connection is locked.
  final pulumi.Input<bool> locked;
  /// Describes why a connection is locked.
  final pulumi.Input<String> reason;

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
      locked: pulumi.Input.fromValue(map['locked'] as bool),
      reason: pulumi.Input.fromValue(map['reason'] as String),
    );
  }
}

