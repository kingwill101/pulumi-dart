// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSandboxesTemplateVolumeMount {
  /// Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  final pulumi.Input<String> mountPath;
  /// This must match the Name of a Volume.
  final pulumi.Input<String> name;
  /// Path within the volume from which the container's volume should be mounted.
  final pulumi.Input<String?>? subPath;

  /// Creates a new [ServiceTemplateSandboxesTemplateVolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  /// [name] This must match the Name of a Volume.
  /// [subPath] Path within the volume from which the container's volume should be mounted.
  const ServiceTemplateSandboxesTemplateVolumeMount({
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

  factory ServiceTemplateSandboxesTemplateVolumeMount.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSandboxesTemplateVolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subPath: (() { final guardedValue = map['subPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
