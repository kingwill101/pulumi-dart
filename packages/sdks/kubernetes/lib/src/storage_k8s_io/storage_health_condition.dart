// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StorageHealthCondition represents an adverse health condition reported by a CSI driver for its storage backend on a node.
class StorageHealthCondition {
  /// accessMode is the access mode affected. Nil means all access modes are affected.
  final pulumi.Input<String?>? accessMode;
  /// lastTransitionTime is when this condition first appeared at its current state.
  final pulumi.Input<String?>? lastTransitionTime;
  /// message is a human-readable description. Maximum permitted length of a message is 1024 characters.
  final pulumi.Input<String?>? message;
  /// reason is a brief CamelCase machine-parseable reason. Maximum permitted length of a reason is 256 characters.
  final pulumi.Input<String> reason;
  /// status is the health status category. One of "StorageUnreachable", "StorageDegraded".
  final pulumi.Input<String> status;
  /// volumeMode is the volume mode affected. Nil means both are affected.
  final pulumi.Input<String?>? volumeMode;

  /// Creates a new [StorageHealthCondition].
  /// [accessMode] accessMode is the access mode affected. Nil means all access modes are affected.
  /// [lastTransitionTime] lastTransitionTime is when this condition first appeared at its current state.
  /// [message] message is a human-readable description. Maximum permitted length of a message is 1024 characters.
  /// [reason] reason is a brief CamelCase machine-parseable reason. Maximum permitted length of a reason is 256 characters.
  /// [status] status is the health status category. One of "StorageUnreachable", "StorageDegraded".
  /// [volumeMode] volumeMode is the volume mode affected. Nil means both are affected.
  const StorageHealthCondition({
    this.accessMode,
    this.lastTransitionTime,
    this.message,
    required this.reason,
    required this.status,
    this.volumeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': reason,
      'status': status,
      'volumeMode': ?volumeMode,
    };
  }

  factory StorageHealthCondition.fromMap(Map<String, dynamic> map) {
    return StorageHealthCondition(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      volumeMode: (() { final guardedValue = map['volumeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
