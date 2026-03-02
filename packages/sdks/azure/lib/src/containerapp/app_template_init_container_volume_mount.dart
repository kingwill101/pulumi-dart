// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateInitContainerVolumeMount {
  /// The name of the Volume to be mounted in the container.
  final pulumi.Input<String> name;
  /// The path in the container at which to mount this volume.
  final pulumi.Input<String> path;
  /// The sub path of the volume to be mounted in the container.
  final pulumi.Input<String>? subPath;

  /// Creates a new [AppTemplateInitContainerVolumeMount].
  /// [name] The name of the Volume to be mounted in the container.
  /// [path] The path in the container at which to mount this volume.
  /// [subPath] The sub path of the volume to be mounted in the container.
  AppTemplateInitContainerVolumeMount({
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

  factory AppTemplateInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return AppTemplateInitContainerVolumeMount(
      name: (map['name'] as String).input(),
      path: (map['path'] as String).input(),
      subPath: map['subPath'] == null ? null : (map['subPath'] as String).input(),
    );
  }
}

