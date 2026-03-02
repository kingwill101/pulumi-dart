// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeError captures an error encountered during a volume operation.
class VolumeError {
  /// errorCode is a numeric gRPC code representing the error encountered during Attach or Detach operations.
  ///
  /// This is an optional, beta field that requires the MutableCSINodeAllocatableCount feature gate being enabled to be set.
  final pulumi.Input<int>? errorCode;
  /// message represents the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information.
  final pulumi.Input<String>? message;
  /// time represents the time the error was encountered.
  final pulumi.Input<String>? time;

  /// Creates a new [VolumeError].
  /// [errorCode] errorCode is a numeric gRPC code representing the error encountered during Attach or Detach operations.
  /// [message] message represents the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information.
  /// [time] time represents the time the error was encountered.
  VolumeError({
    this.errorCode,
    this.message,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'message': ?message,
      'time': ?time,
    };
  }

  factory VolumeError.fromMap(Map<String, dynamic> map) {
    return VolumeError(
      errorCode: map['errorCode'] == null ? null : (map['errorCode'] as int).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      time: map['time'] == null ? null : (map['time'] as String).input(),
    );
  }
}

