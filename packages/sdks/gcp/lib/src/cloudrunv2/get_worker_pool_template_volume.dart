// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_volume_cloud_sql_instance.dart';
import 'get_worker_pool_template_volume_empty_dir.dart';
import 'get_worker_pool_template_volume_gc.dart';
import 'get_worker_pool_template_volume_nf.dart';
import 'get_worker_pool_template_volume_secret.dart';

class GetWorkerPoolTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final pulumi.Input<List<GetWorkerPoolTemplateVolumeCloudSqlInstance>> cloudSqlInstances;
  /// Ephemeral storage used as a shared volume.
  final pulumi.Input<List<GetWorkerPoolTemplateVolumeEmptyDir>> emptyDirs;
  /// Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  final pulumi.Input<List<GetWorkerPoolTemplateVolumeGc>> gcs;
  /// The name of the Cloud Run v2 Worker Pool.
  final pulumi.Input<String> name;
  /// Represents an NFS mount.
  final pulumi.Input<List<GetWorkerPoolTemplateVolumeNf>> nfs;
  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final pulumi.Input<List<GetWorkerPoolTemplateVolumeSecret>> secrets;

  /// Creates a new [GetWorkerPoolTemplateVolume].
  /// [cloudSqlInstances] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDirs] Ephemeral storage used as a shared volume.
  /// [gcs] Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  /// [name] The name of the Cloud Run v2 Worker Pool.
  /// [nfs] Represents an NFS mount.
  /// [secrets] Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  const GetWorkerPoolTemplateVolume({
    required this.cloudSqlInstances,
    required this.emptyDirs,
    required this.gcs,
    required this.name,
    required this.nfs,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstances': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateVolumeCloudSqlInstance>, List<Map<String, dynamic>>>(cloudSqlInstances, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateVolumeCloudSqlInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emptyDirs': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateVolumeEmptyDir>, List<Map<String, dynamic>>>(emptyDirs, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateVolumeEmptyDir, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcs': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateVolumeGc>, List<Map<String, dynamic>>>(gcs, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateVolumeGc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'nfs': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateVolumeNf>, List<Map<String, dynamic>>>(nfs, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateVolumeNf, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secrets': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateVolumeSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateVolumeSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerPoolTemplateVolume.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateVolume(
      cloudSqlInstances: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateVolumeCloudSqlInstance>(map['cloudSqlInstances']!, (value) => GetWorkerPoolTemplateVolumeCloudSqlInstance.fromMap((value as Map).cast<String, dynamic>()))),
      emptyDirs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateVolumeEmptyDir>(map['emptyDirs']!, (value) => GetWorkerPoolTemplateVolumeEmptyDir.fromMap((value as Map).cast<String, dynamic>()))),
      gcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateVolumeGc>(map['gcs']!, (value) => GetWorkerPoolTemplateVolumeGc.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      nfs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateVolumeNf>(map['nfs']!, (value) => GetWorkerPoolTemplateVolumeNf.fromMap((value as Map).cast<String, dynamic>()))),
      secrets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateVolumeSecret>(map['secrets']!, (value) => GetWorkerPoolTemplateVolumeSecret.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
