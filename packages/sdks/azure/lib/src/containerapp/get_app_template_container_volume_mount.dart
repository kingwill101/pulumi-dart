// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppTemplateContainerVolumeMount {
  /// The name of the Container App.
  final pulumi.Input<String> name;
  /// The path in the container at which to mount this volume.
  final pulumi.Input<String> path;
  /// The sub path of the volume to be mounted in the container.
  final pulumi.Input<String> subPath;

  /// Creates a new [GetAppTemplateContainerVolumeMount].
  /// [name] The name of the Container App.
  /// [path] The path in the container at which to mount this volume.
  /// [subPath] The sub path of the volume to be mounted in the container.
  GetAppTemplateContainerVolumeMount({
    required this.name,
    required this.path,
    required this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'subPath': subPath,
    };
  }

  factory GetAppTemplateContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerVolumeMount(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      subPath: pulumi.Input.fromValue(map['subPath'] as String),
    );
  }
}

