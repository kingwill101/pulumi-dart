// ignore_for_file: unused_element, unnecessary_cast


/// VolumeError captures an error encountered during a volume operation.
class VolumeErrorPatchStorageK8sIoV1alpha1 {
  /// String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
  final String? message;
  /// Time the error was encountered.
  final String? time;

  /// Creates a new [VolumeErrorPatchStorageK8sIoV1alpha1].
  /// [message] String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
  /// [time] Time the error was encountered.
  VolumeErrorPatchStorageK8sIoV1alpha1({
    this.message,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'time': ?time,
    };
  }

  factory VolumeErrorPatchStorageK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return VolumeErrorPatchStorageK8sIoV1alpha1(
      message: map['message'] == null ? null : map['message'] as String,
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}

