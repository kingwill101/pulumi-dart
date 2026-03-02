// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_volume_cloud_sql_instance.dart';
import 'worker_pool_template_volume_empty_dir.dart';
import 'worker_pool_template_volume_gcs.dart';
import 'worker_pool_template_volume_nfs.dart';
import 'worker_pool_template_volume_secret.dart';

class WorkerPoolTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateVolumeCloudSqlInstance>? cloudSqlInstance;
  /// Ephemeral storage used as a shared volume.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateVolumeEmptyDir>? emptyDir;
  /// Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateVolumeGcs>? gcs;
  /// Volume's name.
  final pulumi.Input<String> name;
  /// Represents an NFS mount.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateVolumeNfs>? nfs;
  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateVolumeSecret>? secret;

  /// Creates a new [WorkerPoolTemplateVolume].
  /// [cloudSqlInstance] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [gcs] Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  /// [name] Volume's name.
  /// [nfs] Represents an NFS mount.
  /// [secret] Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  WorkerPoolTemplateVolume({
    this.cloudSqlInstance,
    this.emptyDir,
    this.gcs,
    required this.name,
    this.nfs,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstance': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateVolumeCloudSqlInstance, Map<String, dynamic>>(cloudSqlInstance, (value) => value.toMap()),
      'emptyDir': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateVolumeEmptyDir, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'gcs': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateVolumeGcs, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'name': name,
      'nfs': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateVolumeNfs, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'secret': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateVolumeSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory WorkerPoolTemplateVolume.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVolume(
      cloudSqlInstance: map['cloudSqlInstance'] == null ? null : (WorkerPoolTemplateVolumeCloudSqlInstance.fromMap((map['cloudSqlInstance'] as Map).cast<String, dynamic>())).input(),
      emptyDir: map['emptyDir'] == null ? null : (WorkerPoolTemplateVolumeEmptyDir.fromMap((map['emptyDir'] as Map).cast<String, dynamic>())).input(),
      gcs: map['gcs'] == null ? null : (WorkerPoolTemplateVolumeGcs.fromMap((map['gcs'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      nfs: map['nfs'] == null ? null : (WorkerPoolTemplateVolumeNfs.fromMap((map['nfs'] as Map).cast<String, dynamic>())).input(),
      secret: map['secret'] == null ? null : (WorkerPoolTemplateVolumeSecret.fromMap((map['secret'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

