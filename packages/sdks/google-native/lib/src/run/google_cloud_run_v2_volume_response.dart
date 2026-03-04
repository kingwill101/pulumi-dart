// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_cloud_sql_instance_response.dart';
import 'google_cloud_run_v2_empty_dir_volume_source_response.dart';
import 'google_cloud_run_v2_secret_volume_source_response.dart';

/// Volume represents a named volume in a container.
class GoogleCloudRunV2VolumeResponse {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final pulumi.Input<GoogleCloudRunV2CloudSqlInstanceResponse> cloudSqlInstance;

  /// Ephemeral storage used as a shared volume.
  final pulumi.Input<GoogleCloudRunV2EmptyDirVolumeSourceResponse> emptyDir;

  /// Volume's name.
  final pulumi.Input<String> name;

  /// Secret represents a secret that should populate this volume.
  final pulumi.Input<GoogleCloudRunV2SecretVolumeSourceResponse> secret;

  /// Creates a new [GoogleCloudRunV2VolumeResponse].
  /// [cloudSqlInstance] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [name] Volume's name.
  /// [secret] Secret represents a secret that should populate this volume.
  GoogleCloudRunV2VolumeResponse({
    required this.cloudSqlInstance,
    required this.emptyDir,
    required this.name,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstance':
          pulumi.Input.mapInputValue<
            GoogleCloudRunV2CloudSqlInstanceResponse,
            Map<String, dynamic>
          >(cloudSqlInstance, (value) => value.toMap()),
      'emptyDir':
          pulumi.Input.mapInputValue<
            GoogleCloudRunV2EmptyDirVolumeSourceResponse,
            Map<String, dynamic>
          >(emptyDir, (value) => value.toMap()),
      'name': name,
      'secret':
          pulumi.Input.mapInputValue<
            GoogleCloudRunV2SecretVolumeSourceResponse,
            Map<String, dynamic>
          >(secret, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2VolumeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2VolumeResponse(
      cloudSqlInstance: pulumi.Input.fromValue(
        GoogleCloudRunV2CloudSqlInstanceResponse.fromMap(
          (map['cloudSqlInstance']! as Map).cast<String, dynamic>(),
        ),
      ),
      emptyDir: pulumi.Input.fromValue(
        GoogleCloudRunV2EmptyDirVolumeSourceResponse.fromMap(
          (map['emptyDir']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      secret: pulumi.Input.fromValue(
        GoogleCloudRunV2SecretVolumeSourceResponse.fromMap(
          (map['secret']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
