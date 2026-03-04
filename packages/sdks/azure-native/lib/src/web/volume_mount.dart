// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeMount {
  /// Target path on the container where volume is mounted on
  final pulumi.Input<String> containerMountPath;

  /// Config Data to be mounted on the volume
  final pulumi.Input<String>? data;

  /// Boolean to specify if the mount is read only on the container
  final pulumi.Input<bool>? readOnly;

  /// Sub path in the volume where volume is mounted from.
  final pulumi.Input<String> volumeSubPath;

  /// Creates a new [VolumeMount].
  /// [containerMountPath] Target path on the container where volume is mounted on
  /// [data] Config Data to be mounted on the volume
  /// [readOnly] Boolean to specify if the mount is read only on the container
  /// [volumeSubPath] Sub path in the volume where volume is mounted from.
  VolumeMount({
    required this.containerMountPath,
    this.data,
    this.readOnly,
    required this.volumeSubPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerMountPath': containerMountPath,
      'data': ?data,
      'readOnly': ?readOnly,
      'volumeSubPath': volumeSubPath,
    };
  }

  factory VolumeMount.fromMap(Map<String, dynamic> map) {
    return VolumeMount(
      containerMountPath: pulumi.Input.fromValue(
        map['containerMountPath'] as String,
      ),
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      volumeSubPath: pulumi.Input.fromValue(map['volumeSubPath'] as String),
    );
  }
}
