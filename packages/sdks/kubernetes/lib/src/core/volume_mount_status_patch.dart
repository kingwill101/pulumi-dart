// ignore_for_file: unused_element, unnecessary_cast


/// VolumeMountStatus shows status of volume mounts.
class VolumeMountStatusPatch {
  /// MountPath corresponds to the original VolumeMount.
  final String? mountPath;
  /// Name corresponds to the name of the original VolumeMount.
  final String? name;
  /// ReadOnly corresponds to the original VolumeMount.
  final bool? readOnly;
  /// RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly mounts). An IfPossible value in the original VolumeMount must be translated to Disabled or Enabled, depending on the mount result.
  final String? recursiveReadOnly;

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
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      recursiveReadOnly: map['recursiveReadOnly'] == null ? null : map['recursiveReadOnly'] as String,
    );
  }
}

