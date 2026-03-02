// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerVolumeMount {
  /// Path within the container at which the volume should be mounted.  Must
  /// not contain ':'.
  final pulumi.Input<String> mountPath;
  /// The name of the Cloud Run Service.
  final pulumi.Input<String> name;
  /// Path within the volume from which the container's volume should be mounted.
  final pulumi.Input<String> subPath;

  /// Creates a new [GetServiceTemplateSpecContainerVolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted.  Must
  /// [name] The name of the Cloud Run Service.
  /// [subPath] Path within the volume from which the container's volume should be mounted.
  GetServiceTemplateSpecContainerVolumeMount({
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
      mountPath: (map['mountPath'] as String).input(),
      name: (map['name'] as String).input(),
      subPath: (map['subPath'] as String).input(),
    );
  }
}

