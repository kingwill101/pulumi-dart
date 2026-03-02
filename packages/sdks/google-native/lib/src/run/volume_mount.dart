// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeMount describes a mounting of a Volume within a container.
class VolumeMount {
  /// Path within the container at which the volume should be mounted. Must not contain ':'.
  final pulumi.Input<String> mountPath;
  /// The name of the volume. There must be a corresponding Volume with the same name.
  final pulumi.Input<String> name;
  /// Sets the mount to be read-only or read-write. Not used by Cloud Run.
  final pulumi.Input<bool>? readOnly;
  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final pulumi.Input<String>? subPath;

  /// Creates a new [VolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted. Must not contain ':'.
  /// [name] The name of the volume. There must be a corresponding Volume with the same name.
  /// [readOnly] Sets the mount to be read-only or read-write. Not used by Cloud Run.
  /// [subPath] Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  VolumeMount({
    required this.mountPath,
    required this.name,
    this.readOnly,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': ?readOnly,
      'subPath': ?subPath,
    };
  }

  factory VolumeMount.fromMap(Map<String, dynamic> map) {
    return VolumeMount(
      mountPath: (map['mountPath'] as String).input(),
      name: (map['name'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      subPath: map['subPath'] == null ? null : (map['subPath'] as String).input(),
    );
  }
}

