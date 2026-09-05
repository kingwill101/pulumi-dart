// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeError captures an error encountered during a volume operation.
class VolumeErrorStorageK8sIoV1alpha1 {
  /// String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
  final pulumi.Input<String?>? message;
  /// Time the error was encountered.
  final pulumi.Input<String?>? time;

  /// Creates a new [VolumeErrorStorageK8sIoV1alpha1].
  /// [message] String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
  /// [time] Time the error was encountered.
  const VolumeErrorStorageK8sIoV1alpha1({
    this.message,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'time': ?time,
    };
  }

  factory VolumeErrorStorageK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return VolumeErrorStorageK8sIoV1alpha1(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
