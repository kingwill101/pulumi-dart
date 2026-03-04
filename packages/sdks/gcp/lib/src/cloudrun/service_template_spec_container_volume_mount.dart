// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecContainerVolumeMount {
  /// Path within the container at which the volume should be mounted.  Must
  /// not contain ':'.
  final pulumi.Input<String> mountPath;

  /// This must match the Name of a Volume.
  final pulumi.Input<String> name;

  /// Path within the volume from which the container's volume should be mounted.
  final pulumi.Input<String>? subPath;

  /// Creates a new [ServiceTemplateSpecContainerVolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted.  Must
  /// [name] This must match the Name of a Volume.
  /// [subPath] Path within the volume from which the container's volume should be mounted.
  ServiceTemplateSpecContainerVolumeMount({
    required this.mountPath,
    required this.name,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'subPath': ?subPath,
    };
  }

  factory ServiceTemplateSpecContainerVolumeMount.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateSpecContainerVolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subPath: (() {
        final guardedValue = map['subPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
