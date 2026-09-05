// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeHealthCondition represents an adverse health condition reported for a volume.
class VolumeHealthCondition {
  /// message is a human-readable description. Maximum permitted length of a message is 1024 bytes.
  final pulumi.Input<String?>? message;
  /// reason is a brief CamelCase machine-parseable reason. Together with status it forms the unique identity of a condition entry. Maximum permitted length of a reason is 256 bytes.
  final pulumi.Input<String> reason;
  /// status is the machine-parseable health category. Possible values: - "Inaccessible": the volume cannot be accessed. - "DataLoss": data loss has been detected on the volume. - "Degraded": the volume is functioning with reduced capability.
  final pulumi.Input<String> status;

  /// Creates a new [VolumeHealthCondition].
  /// [message] message is a human-readable description. Maximum permitted length of a message is 1024 bytes.
  /// [reason] reason is a brief CamelCase machine-parseable reason. Together with status it forms the unique identity of a condition entry. Maximum permitted length of a reason is 256 bytes.
  /// [status] status is the machine-parseable health category. Possible values: - "Inaccessible": the volume cannot be accessed. - "DataLoss": data loss has been detected on the volume. - "Degraded": the volume is functioning with reduced capability.
  const VolumeHealthCondition({
    this.message,
    required this.reason,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'reason': reason,
      'status': status,
    };
  }

  factory VolumeHealthCondition.fromMap(Map<String, dynamic> map) {
    return VolumeHealthCondition(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
