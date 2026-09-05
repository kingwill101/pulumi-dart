// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeHealthCondition represents an adverse health condition reported for a volume.
class VolumeHealthConditionPatch {
  /// message is a human-readable description. Maximum permitted length of a message is 1024 bytes.
  final pulumi.Input<String?>? message;
  /// reason is a brief CamelCase machine-parseable reason. Together with status it forms the unique identity of a condition entry. Maximum permitted length of a reason is 256 bytes.
  final pulumi.Input<String?>? reason;
  /// status is the machine-parseable health category. Possible values: - "Inaccessible": the volume cannot be accessed. - "DataLoss": data loss has been detected on the volume. - "Degraded": the volume is functioning with reduced capability.
  final pulumi.Input<String?>? status;

  /// Creates a new [VolumeHealthConditionPatch].
  /// [message] message is a human-readable description. Maximum permitted length of a message is 1024 bytes.
  /// [reason] reason is a brief CamelCase machine-parseable reason. Together with status it forms the unique identity of a condition entry. Maximum permitted length of a reason is 256 bytes.
  /// [status] status is the machine-parseable health category. Possible values: - "Inaccessible": the volume cannot be accessed. - "DataLoss": data loss has been detected on the volume. - "Degraded": the volume is functioning with reduced capability.
  const VolumeHealthConditionPatch({
    this.message,
    this.reason,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
    };
  }

  factory VolumeHealthConditionPatch.fromMap(Map<String, dynamic> map) {
    return VolumeHealthConditionPatch(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
