// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateContainerVolumeMount {
  /// The name of the volume to mount. This must match the name of a volume defined in the `volume` block.
  final String name;
  /// The path within the container at which the volume should be mounted. Must not contain `:`.
  final String path;
  /// The sub path of the volume to be mounted in the container.
  final String? subPath;

  /// Creates a new [JobTemplateContainerVolumeMount].
  /// [name] The name of the volume to mount. This must match the name of a volume defined in the `volume` block.
  /// [path] The path within the container at which the volume should be mounted. Must not contain `:`.
  /// [subPath] The sub path of the volume to be mounted in the container.
  JobTemplateContainerVolumeMount({
    required this.name,
    required this.path,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'subPath': ?subPath,
    };
  }

  factory JobTemplateContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return JobTemplateContainerVolumeMount(
      name: map['name'] as String,
      path: map['path'] as String,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
    );
  }
}

