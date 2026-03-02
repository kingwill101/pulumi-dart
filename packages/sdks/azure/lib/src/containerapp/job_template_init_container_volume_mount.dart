// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateInitContainerVolumeMount {
  /// The name of the volume to mount. This must match the name of a volume defined in the `volume` block.
  final pulumi.Input<String> name;
  /// The path within the container at which the volume should be mounted. Must not contain `:`.
  final pulumi.Input<String> path;
  /// The sub path of the volume to be mounted in the container.
  final pulumi.Input<String>? subPath;

  /// Creates a new [JobTemplateInitContainerVolumeMount].
  /// [name] The name of the volume to mount. This must match the name of a volume defined in the `volume` block.
  /// [path] The path within the container at which the volume should be mounted. Must not contain `:`.
  /// [subPath] The sub path of the volume to be mounted in the container.
  JobTemplateInitContainerVolumeMount({
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

  factory JobTemplateInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return JobTemplateInitContainerVolumeMount(
      name: (map['name'] as String).input(),
      path: (map['path'] as String).input(),
      subPath: map['subPath'] == null ? null : (map['subPath'] as String).input(),
    );
  }
}

