// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateContainerVolumeMount {
  /// The name of the Volume to be mounted in the container.
  final pulumi.Input<String> name;
  /// The path in the container at which to mount this volume.
  final pulumi.Input<String> path;
  /// The sub path of the volume to be mounted in the container.
  final pulumi.Input<String>? subPath;

  /// Creates a new [AppTemplateContainerVolumeMount].
  /// [name] The name of the Volume to be mounted in the container.
  /// [path] The path in the container at which to mount this volume.
  /// [subPath] The sub path of the volume to be mounted in the container.
  const AppTemplateContainerVolumeMount({
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

  factory AppTemplateContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return AppTemplateContainerVolumeMount(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      subPath: (() { final guardedValue = map['subPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

