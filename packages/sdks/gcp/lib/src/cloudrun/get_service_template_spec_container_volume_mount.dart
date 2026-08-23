// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerVolumeMount {
  /// Path within the container at which the volume should be mounted.  Must
  /// not contain ':'.
  final pulumi.Input<String> mountPath;
  /// Name must be unique within a Google Cloud project and region.
  /// Is required when creating resources. Name is primarily intended
  /// for creation idempotence and configuration definition. Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;
  /// Path within the volume from which the container's volume should be mounted.
  final pulumi.Input<String> subPath;

  /// Creates a new [GetServiceTemplateSpecContainerVolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted.  Must
  /// [name] Name must be unique within a Google Cloud project and region.
  /// [subPath] Path within the volume from which the container's volume should be mounted.
  const GetServiceTemplateSpecContainerVolumeMount({
    required this.mountPath,
    required this.name,
    required this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'subPath': subPath,
    };
  }

  factory GetServiceTemplateSpecContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerVolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subPath: pulumi.Input.fromValue(map['subPath'] as String),
    );
  }
}
