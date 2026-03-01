// ignore_for_file: unused_element, unnecessary_cast


/// VolumeMount describes a mounting of a Volume within a container.
class VolumeMountResponse {
  /// Path within the container at which the volume should be mounted. Must not contain ':'.
  final String mountPath;
  /// The name of the volume. There must be a corresponding Volume with the same name.
  final String name;
  /// Sets the mount to be read-only or read-write. Not used by Cloud Run.
  final bool readOnly;
  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final String subPath;

  /// Creates a new [VolumeMountResponse].
  /// [mountPath] Path within the container at which the volume should be mounted. Must not contain ':'.
  /// [name] The name of the volume. There must be a corresponding Volume with the same name.
  /// [readOnly] Sets the mount to be read-only or read-write. Not used by Cloud Run.
  /// [subPath] Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  VolumeMountResponse({
    required this.mountPath,
    required this.name,
    required this.readOnly,
    required this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': readOnly,
      'subPath': subPath,
    };
  }

  factory VolumeMountResponse.fromMap(Map<String, dynamic> map) {
    return VolumeMountResponse(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] as bool,
      subPath: map['subPath'] as String,
    );
  }
}

