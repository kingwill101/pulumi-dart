// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_volume_cloud_sql_instance.dart';
import 'get_service_template_volume_empty_dir.dart';
import 'get_service_template_volume_gc.dart';
import 'get_service_template_volume_nf.dart';
import 'get_service_template_volume_secret.dart';

class GetServiceTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final pulumi.Input<List<GetServiceTemplateVolumeCloudSqlInstance>> cloudSqlInstances;
  /// Ephemeral storage used as a shared volume.
  final pulumi.Input<List<GetServiceTemplateVolumeEmptyDir>> emptyDirs;
  /// Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  final pulumi.Input<List<GetServiceTemplateVolumeGc>> gcs;
  /// The name of the Cloud Run v2 Service.
  final pulumi.Input<String> name;
  /// Represents an NFS mount.
  final pulumi.Input<List<GetServiceTemplateVolumeNf>> nfs;
  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final pulumi.Input<List<GetServiceTemplateVolumeSecret>> secrets;

  /// Creates a new [GetServiceTemplateVolume].
  /// [cloudSqlInstances] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDirs] Ephemeral storage used as a shared volume.
  /// [gcs] Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  /// [name] The name of the Cloud Run v2 Service.
  /// [nfs] Represents an NFS mount.
  /// [secrets] Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  GetServiceTemplateVolume({
    required this.cloudSqlInstances,
    required this.emptyDirs,
    required this.gcs,
    required this.name,
    required this.nfs,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstances': pulumi.Input.mapInputValue<List<GetServiceTemplateVolumeCloudSqlInstance>, List<Map<String, dynamic>>>(cloudSqlInstances, (value) => pulumi.Input.encodeList<GetServiceTemplateVolumeCloudSqlInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emptyDirs': pulumi.Input.mapInputValue<List<GetServiceTemplateVolumeEmptyDir>, List<Map<String, dynamic>>>(emptyDirs, (value) => pulumi.Input.encodeList<GetServiceTemplateVolumeEmptyDir, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcs': pulumi.Input.mapInputValue<List<GetServiceTemplateVolumeGc>, List<Map<String, dynamic>>>(gcs, (value) => pulumi.Input.encodeList<GetServiceTemplateVolumeGc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'nfs': pulumi.Input.mapInputValue<List<GetServiceTemplateVolumeNf>, List<Map<String, dynamic>>>(nfs, (value) => pulumi.Input.encodeList<GetServiceTemplateVolumeNf, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secrets': pulumi.Input.mapInputValue<List<GetServiceTemplateVolumeSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<GetServiceTemplateVolumeSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceTemplateVolume.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolume(
      cloudSqlInstances: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateVolumeCloudSqlInstance>(map['cloudSqlInstances']!, (value) => GetServiceTemplateVolumeCloudSqlInstance.fromMap((value as Map).cast<String, dynamic>()))),
      emptyDirs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateVolumeEmptyDir>(map['emptyDirs']!, (value) => GetServiceTemplateVolumeEmptyDir.fromMap((value as Map).cast<String, dynamic>()))),
      gcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateVolumeGc>(map['gcs']!, (value) => GetServiceTemplateVolumeGc.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      nfs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateVolumeNf>(map['nfs']!, (value) => GetServiceTemplateVolumeNf.fromMap((value as Map).cast<String, dynamic>()))),
      secrets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateVolumeSecret>(map['secrets']!, (value) => GetServiceTemplateVolumeSecret.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

