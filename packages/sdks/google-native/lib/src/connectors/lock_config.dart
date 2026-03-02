// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines whether or no a connection is locked. If locked, a reason must be specified.
class LockConfig {
  /// Indicates whether or not the connection is locked.
  final pulumi.Input<bool>? locked;
  /// Describes why a connection is locked.
  final pulumi.Input<String>? reason;

  /// Creates a new [LockConfig].
  /// [locked] Indicates whether or not the connection is locked.
  /// [reason] Describes why a connection is locked.
  LockConfig({
    this.locked,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locked': ?locked,
      'reason': ?reason,
    };
  }

  factory LockConfig.fromMap(Map<String, dynamic> map) {
    return LockConfig(
      locked: map['locked'] == null ? null : (map['locked']! as bool).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
    );
  }
}

