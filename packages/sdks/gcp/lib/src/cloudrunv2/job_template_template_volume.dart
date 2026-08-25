// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_volume_cloud_sql_instance.dart';
import 'job_template_template_volume_empty_dir.dart';
import 'job_template_template_volume_gcs.dart';
import 'job_template_template_volume_nfs.dart';
import 'job_template_template_volume_secret.dart';

class JobTemplateTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateVolumeCloudSqlInstance?>? cloudSqlInstance;
  /// Ephemeral storage used as a shared volume.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateVolumeEmptyDir?>? emptyDir;
  /// Cloud Storage bucket mounted as a volume using GCSFuse.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateVolumeGcs?>? gcs;
  /// Volume's name.
  final pulumi.Input<String> name;
  /// NFS share mounted as a volume.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateVolumeNfs?>? nfs;
  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateVolumeSecret?>? secret;

  /// Creates a new [JobTemplateTemplateVolume].
  /// [cloudSqlInstance] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [gcs] Cloud Storage bucket mounted as a volume using GCSFuse.
  /// [name] Volume's name.
  /// [nfs] NFS share mounted as a volume.
  /// [secret] Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  const JobTemplateTemplateVolume({
    this.cloudSqlInstance,
    this.emptyDir,
    this.gcs,
    required this.name,
    this.nfs,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstance': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateVolumeCloudSqlInstance, Map<String, dynamic>>(cloudSqlInstance, (value) => value.toMap()),
      'emptyDir': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateVolumeEmptyDir, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'gcs': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateVolumeGcs, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'name': name,
      'nfs': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateVolumeNfs, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'secret': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateVolumeSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory JobTemplateTemplateVolume.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVolume(
      cloudSqlInstance: (() { final guardedValue = map['cloudSqlInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateVolumeCloudSqlInstance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emptyDir: (() { final guardedValue = map['emptyDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateVolumeEmptyDir.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcs: (() { final guardedValue = map['gcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateVolumeGcs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nfs: (() { final guardedValue = map['nfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateVolumeNfs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateVolumeSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
