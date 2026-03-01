// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_template_template_volume_cloud_sql_instance.dart';
import 'get_job_template_template_volume_empty_dir.dart';
import 'get_job_template_template_volume_gc.dart';
import 'get_job_template_template_volume_nf.dart';
import 'get_job_template_template_volume_secret.dart';

class GetJobTemplateTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final List<GetJobTemplateTemplateVolumeCloudSqlInstance> cloudSqlInstances;
  /// Ephemeral storage used as a shared volume.
  final List<GetJobTemplateTemplateVolumeEmptyDir> emptyDirs;
  /// Cloud Storage bucket mounted as a volume using GCSFuse.
  final List<GetJobTemplateTemplateVolumeGc> gcs;
  /// The name of the Cloud Run v2 Job.
  final String name;
  /// NFS share mounted as a volume.
  final List<GetJobTemplateTemplateVolumeNf> nfs;
  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final List<GetJobTemplateTemplateVolumeSecret> secrets;

  /// Creates a new [GetJobTemplateTemplateVolume].
  /// [cloudSqlInstances] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDirs] Ephemeral storage used as a shared volume.
  /// [gcs] Cloud Storage bucket mounted as a volume using GCSFuse.
  /// [name] The name of the Cloud Run v2 Job.
  /// [nfs] NFS share mounted as a volume.
  /// [secrets] Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  GetJobTemplateTemplateVolume({
    required this.cloudSqlInstances,
    required this.emptyDirs,
    required this.gcs,
    required this.name,
    required this.nfs,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstances': pulumi.Input.encodeList<GetJobTemplateTemplateVolumeCloudSqlInstance, Map<String, dynamic>>(cloudSqlInstances, (value) => value.toMap()),
      'emptyDirs': pulumi.Input.encodeList<GetJobTemplateTemplateVolumeEmptyDir, Map<String, dynamic>>(emptyDirs, (value) => value.toMap()),
      'gcs': pulumi.Input.encodeList<GetJobTemplateTemplateVolumeGc, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'name': name,
      'nfs': pulumi.Input.encodeList<GetJobTemplateTemplateVolumeNf, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'secrets': pulumi.Input.encodeList<GetJobTemplateTemplateVolumeSecret, Map<String, dynamic>>(secrets, (value) => value.toMap()),
    };
  }

  factory GetJobTemplateTemplateVolume.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateVolume(
      cloudSqlInstances: pulumi.Input.decodeList<GetJobTemplateTemplateVolumeCloudSqlInstance>(map['cloudSqlInstances'], (value) => GetJobTemplateTemplateVolumeCloudSqlInstance.fromMap((value as Map).cast<String, dynamic>())),
      emptyDirs: pulumi.Input.decodeList<GetJobTemplateTemplateVolumeEmptyDir>(map['emptyDirs'], (value) => GetJobTemplateTemplateVolumeEmptyDir.fromMap((value as Map).cast<String, dynamic>())),
      gcs: pulumi.Input.decodeList<GetJobTemplateTemplateVolumeGc>(map['gcs'], (value) => GetJobTemplateTemplateVolumeGc.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nfs: pulumi.Input.decodeList<GetJobTemplateTemplateVolumeNf>(map['nfs'], (value) => GetJobTemplateTemplateVolumeNf.fromMap((value as Map).cast<String, dynamic>())),
      secrets: pulumi.Input.decodeList<GetJobTemplateTemplateVolumeSecret>(map['secrets'], (value) => GetJobTemplateTemplateVolumeSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

