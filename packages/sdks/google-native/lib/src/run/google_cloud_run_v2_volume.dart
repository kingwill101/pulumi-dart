// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_cloud_sql_instance.dart';
import 'google_cloud_run_v2_empty_dir_volume_source.dart';
import 'google_cloud_run_v2_secret_volume_source.dart';

/// Volume represents a named volume in a container.
class GoogleCloudRunV2Volume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final pulumi.Input<GoogleCloudRunV2CloudSqlInstance>? cloudSqlInstance;
  /// Ephemeral storage used as a shared volume.
  final pulumi.Input<GoogleCloudRunV2EmptyDirVolumeSource>? emptyDir;
  /// Volume's name.
  final pulumi.Input<String> name;
  /// Secret represents a secret that should populate this volume.
  final pulumi.Input<GoogleCloudRunV2SecretVolumeSource>? secret;

  /// Creates a new [GoogleCloudRunV2Volume].
  /// [cloudSqlInstance] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [name] Volume's name.
  /// [secret] Secret represents a secret that should populate this volume.
  GoogleCloudRunV2Volume({
    this.cloudSqlInstance,
    this.emptyDir,
    required this.name,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstance': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2CloudSqlInstance, Map<String, dynamic>>(cloudSqlInstance, (value) => value.toMap()),
      'emptyDir': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2EmptyDirVolumeSource, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'name': name,
      'secret': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2SecretVolumeSource, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2Volume.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2Volume(
      cloudSqlInstance: map['cloudSqlInstance'] == null ? null : (GoogleCloudRunV2CloudSqlInstance.fromMap((map['cloudSqlInstance']! as Map).cast<String, dynamic>())).input(),
      emptyDir: map['emptyDir'] == null ? null : (GoogleCloudRunV2EmptyDirVolumeSource.fromMap((map['emptyDir']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      secret: map['secret'] == null ? null : (GoogleCloudRunV2SecretVolumeSource.fromMap((map['secret']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

