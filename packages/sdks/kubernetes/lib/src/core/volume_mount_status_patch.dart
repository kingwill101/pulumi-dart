// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeMountStatus shows status of volume mounts.
class VolumeMountStatusPatch {
  /// MountPath corresponds to the original VolumeMount.
  final pulumi.Input<String>? mountPath;
  /// Name corresponds to the name of the original VolumeMount.
  final pulumi.Input<String>? name;
  /// ReadOnly corresponds to the original VolumeMount.
  final pulumi.Input<bool>? readOnly;
  /// RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly mounts). An IfPossible value in the original VolumeMount must be translated to Disabled or Enabled, depending on the mount result.
  final pulumi.Input<String>? recursiveReadOnly;

  /// Creates a new [VolumeMountStatusPatch].
  /// [mountPath] MountPath corresponds to the original VolumeMount.
  /// [name] Name corresponds to the name of the original VolumeMount.
  /// [readOnly] ReadOnly corresponds to the original VolumeMount.
  /// [recursiveReadOnly] RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly mounts). An IfPossible value in the original VolumeMount must be translated to Disabled or Enabled, depending on the mount result.
  VolumeMountStatusPatch({
    this.mountPath,
    this.name,
    this.readOnly,
    this.recursiveReadOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'name': ?name,
      'readOnly': ?readOnly,
      'recursiveReadOnly': ?recursiveReadOnly,
    };
  }

  factory VolumeMountStatusPatch.fromMap(Map<String, dynamic> map) {
    return VolumeMountStatusPatch(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recursiveReadOnly: (() { final guardedValue = map['recursiveReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

