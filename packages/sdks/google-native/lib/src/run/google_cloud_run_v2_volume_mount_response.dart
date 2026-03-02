// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeMount describes a mounting of a Volume within a container.
class GoogleCloudRunV2VolumeMountResponse {
  /// Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be `/cloudsql`. All instances defined in the Volume will be available as `/cloudsql/[instance]`. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  final pulumi.Input<String> mountPath;
  /// This must match the Name of a Volume.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudRunV2VolumeMountResponse].
  /// [mountPath] Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be `/cloudsql`. All instances defined in the Volume will be available as `/cloudsql/[instance]`. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  /// [name] This must match the Name of a Volume.
  GoogleCloudRunV2VolumeMountResponse({
    required this.mountPath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
    };
  }

  factory GoogleCloudRunV2VolumeMountResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2VolumeMountResponse(
      mountPath: (map['mountPath'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

