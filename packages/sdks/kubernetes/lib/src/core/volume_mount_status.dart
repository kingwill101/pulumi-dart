// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeMountStatus shows status of volume mounts.
class VolumeMountStatus {
  /// MountPath corresponds to the original VolumeMount.
  final pulumi.Input<String> mountPath;
  /// Name corresponds to the name of the original VolumeMount.
  final pulumi.Input<String> name;
  /// ReadOnly corresponds to the original VolumeMount.
  final pulumi.Input<bool>? readOnly;
  /// RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly mounts). An IfPossible value in the original VolumeMount must be translated to Disabled or Enabled, depending on the mount result.
  final pulumi.Input<String>? recursiveReadOnly;

  /// Creates a new [VolumeMountStatus].
  /// [mountPath] MountPath corresponds to the original VolumeMount.
  /// [name] Name corresponds to the name of the original VolumeMount.
  /// [readOnly] ReadOnly corresponds to the original VolumeMount.
  /// [recursiveReadOnly] RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly mounts). An IfPossible value in the original VolumeMount must be translated to Disabled or Enabled, depending on the mount result.
  VolumeMountStatus({
    required this.mountPath,
    required this.name,
    this.readOnly,
    this.recursiveReadOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': ?readOnly,
      'recursiveReadOnly': ?recursiveReadOnly,
    };
  }

  factory VolumeMountStatus.fromMap(Map<String, dynamic> map) {
    return VolumeMountStatus(
      mountPath: (map['mountPath'] as String).input(),
      name: (map['name'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      recursiveReadOnly: map['recursiveReadOnly'] == null ? null : (map['recursiveReadOnly']! as String).input(),
    );
  }
}

