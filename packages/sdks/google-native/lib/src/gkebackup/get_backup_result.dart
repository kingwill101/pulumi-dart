// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_metadata_response.dart';
import 'encryption_key_response.dart';
import 'namespaced_names_response.dart';
import 'namespaces_response.dart';

/// Result data returned by getBackup.
class GetBackupResult {
  /// If True, all namespaces were included in the Backup.
  final bool? allNamespaces;
  /// Information about the GKE cluster from which this Backup was created.
  final ClusterMetadataResponse? clusterMetadata;
  /// Completion time of the Backup
  final String? completeTime;
  /// The size of the config backup in bytes.
  final String? configBackupSizeBytes;
  /// Whether or not the Backup contains Kubernetes Secrets. Controlled by the parent BackupPlan's include_secrets value.
  final bool? containsSecrets;
  /// Whether or not the Backup contains volume data. Controlled by the parent BackupPlan's include_volume_data value.
  final bool? containsVolumeData;
  /// The timestamp when this Backup resource was created.
  final String? createTime;
  /// Optional. Minimum age for this Backup (in days). If this field is set to a non-zero value, the Backup will be "locked" against deletion (either manual or automatic deletion) for the number of days provided (measured from the creation time of the Backup). MUST be an integer value between 0-90 (inclusive). Defaults to parent BackupPlan's backup_delete_lock_days setting and may only be increased (either at creation time or in a subsequent update).
  final int? deleteLockDays;
  /// The time at which an existing delete lock will expire for this backup (calculated from create_time + delete_lock_days).
  final String? deleteLockExpireTime;
  /// Optional. User specified descriptive string for this Backup.
  final String? description;
  /// The customer managed encryption key that was used to encrypt the Backup's artifacts. Inherited from the parent BackupPlan's encryption_key value.
  final EncryptionKeyResponse? encryptionKey;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform backup updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackup`, and systems are expected to put that etag in the request to `UpdateBackup` or `DeleteBackup` to ensure that their change will be applied to the same version of the resource.
  final String? etag;
  /// Optional. A set of custom labels supplied by user.
  final Map<String, String>? labels;
  /// This flag indicates whether this Backup resource was created manually by a user or via a schedule in the BackupPlan. A value of True means that the Backup was created manually.
  final bool? manual;
  /// The fully qualified name of the Backup. `projects/*/locations/*/backupPlans/*/backups/*`
  final String? name;
  /// The total number of Kubernetes Pods contained in the Backup.
  final int? podCount;
  /// The total number of Kubernetes resources included in the Backup.
  final int? resourceCount;
  /// Optional. The age (in days) after which this Backup will be automatically deleted. Must be an integer value &gt;= 0: - If 0, no automatic deletion will occur for this Backup. - If not 0, this must be &gt;= delete_lock_days and &lt;= 365. Once a Backup is created, this value may only be increased. Defaults to the parent BackupPlan's backup_retain_days value.
  final int? retainDays;
  /// The time at which this Backup will be automatically deleted (calculated from create_time + retain_days).
  final String? retainExpireTime;
  /// If set, the list of ProtectedApplications whose resources were included in the Backup.
  final NamespacedNamesResponse? selectedApplications;
  /// If set, the list of namespaces that were included in the Backup.
  final NamespacesResponse? selectedNamespaces;
  /// The total size of the Backup in bytes = config backup size + sum(volume backup sizes)
  final String? sizeBytes;
  /// Current state of the Backup
  final String? state;
  /// Human-readable description of why the backup is in the current `state`.
  final String? stateReason;
  /// Server generated global unique identifier of [UUID4](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  final String? uid;
  /// The timestamp when this Backup resource was last updated.
  final String? updateTime;
  /// The total number of volume backups contained in the Backup.
  final int? volumeCount;

  /// Creates a new [GetBackupResult].
  /// [allNamespaces] If True, all namespaces were included in the Backup.
  /// [clusterMetadata] Information about the GKE cluster from which this Backup was created.
  /// [completeTime] Completion time of the Backup
  /// [configBackupSizeBytes] The size of the config backup in bytes.
  /// [containsSecrets] Whether or not the Backup contains Kubernetes Secrets. Controlled by the parent BackupPlan's include_secrets value.
  /// [containsVolumeData] Whether or not the Backup contains volume data. Controlled by the parent BackupPlan's include_volume_data value.
  /// [createTime] The timestamp when this Backup resource was created.
  /// [deleteLockDays] Optional. Minimum age for this Backup (in days). If this field is set to a non-zero value, the Backup will be "locked" against deletion (either manual or automatic deletion) for the number of days provided (measured from the creation time of the Backup). MUST be an integer value between 0-90 (inclusive). Defaults to parent BackupPlan's backup_delete_lock_days setting and may only be increased (either at creation time or in a subsequent update).
  /// [deleteLockExpireTime] The time at which an existing delete lock will expire for this backup (calculated from create_time + delete_lock_days).
  /// [description] Optional. User specified descriptive string for this Backup.
  /// [encryptionKey] The customer managed encryption key that was used to encrypt the Backup's artifacts. Inherited from the parent BackupPlan's encryption_key value.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform backup updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackup`, and systems are expected to put that etag in the request to `UpdateBackup` or `DeleteBackup` to ensure that their change will be applied to the same version of the resource.
  /// [labels] Optional. A set of custom labels supplied by user.
  /// [manual] This flag indicates whether this Backup resource was created manually by a user or via a schedule in the BackupPlan. A value of True means that the Backup was created manually.
  /// [name] The fully qualified name of the Backup. `projects/*/locations/*/backupPlans/*/backups/*`
  /// [podCount] The total number of Kubernetes Pods contained in the Backup.
  /// [resourceCount] The total number of Kubernetes resources included in the Backup.
  /// [retainDays] Optional. The age (in days) after which this Backup will be automatically deleted. Must be an integer value &gt;= 0: - If 0, no automatic deletion will occur for this Backup. - If not 0, this must be &gt;= delete_lock_days and &lt;= 365. Once a Backup is created, this value may only be increased. Defaults to the parent BackupPlan's backup_retain_days value.
  /// [retainExpireTime] The time at which this Backup will be automatically deleted (calculated from create_time + retain_days).
  /// [selectedApplications] If set, the list of ProtectedApplications whose resources were included in the Backup.
  /// [selectedNamespaces] If set, the list of namespaces that were included in the Backup.
  /// [sizeBytes] The total size of the Backup in bytes = config backup size + sum(volume backup sizes)
  /// [state] Current state of the Backup
  /// [stateReason] Human-readable description of why the backup is in the current `state`.
  /// [uid] Server generated global unique identifier of [UUID4](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  /// [updateTime] The timestamp when this Backup resource was last updated.
  /// [volumeCount] The total number of volume backups contained in the Backup.
  const GetBackupResult({
    this.allNamespaces,
    this.clusterMetadata,
    this.completeTime,
    this.configBackupSizeBytes,
    this.containsSecrets,
    this.containsVolumeData,
    this.createTime,
    this.deleteLockDays,
    this.deleteLockExpireTime,
    this.description,
    this.encryptionKey,
    this.etag,
    this.labels,
    this.manual,
    this.name,
    this.podCount,
    this.resourceCount,
    this.retainDays,
    this.retainExpireTime,
    this.selectedApplications,
    this.selectedNamespaces,
    this.sizeBytes,
    this.state,
    this.stateReason,
    this.uid,
    this.updateTime,
    this.volumeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNamespaces': ?allNamespaces,
      'clusterMetadata': ?clusterMetadata?.toMap(),
      'completeTime': ?completeTime,
      'configBackupSizeBytes': ?configBackupSizeBytes,
      'containsSecrets': ?containsSecrets,
      'containsVolumeData': ?containsVolumeData,
      'createTime': ?createTime,
      'deleteLockDays': ?deleteLockDays,
      'deleteLockExpireTime': ?deleteLockExpireTime,
      'description': ?description,
      'encryptionKey': ?encryptionKey?.toMap(),
      'etag': ?etag,
      'labels': ?labels,
      'manual': ?manual,
      'name': ?name,
      'podCount': ?podCount,
      'resourceCount': ?resourceCount,
      'retainDays': ?retainDays,
      'retainExpireTime': ?retainExpireTime,
      'selectedApplications': ?selectedApplications?.toMap(),
      'selectedNamespaces': ?selectedNamespaces?.toMap(),
      'sizeBytes': ?sizeBytes,
      'state': ?state,
      'stateReason': ?stateReason,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'volumeCount': ?volumeCount,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      allNamespaces: (() { final guardedValue = map['allNamespaces']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clusterMetadata: (() { final guardedValue = map['clusterMetadata']; if (guardedValue == null) return null; return ClusterMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      completeTime: (() { final guardedValue = map['completeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configBackupSizeBytes: (() { final guardedValue = map['configBackupSizeBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containsSecrets: (() { final guardedValue = map['containsSecrets']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      containsVolumeData: (() { final guardedValue = map['containsVolumeData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteLockDays: (() { final guardedValue = map['deleteLockDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      deleteLockExpireTime: (() { final guardedValue = map['deleteLockExpireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return EncryptionKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      manual: (() { final guardedValue = map['manual']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      podCount: (() { final guardedValue = map['podCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      resourceCount: (() { final guardedValue = map['resourceCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      retainDays: (() { final guardedValue = map['retainDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      retainExpireTime: (() { final guardedValue = map['retainExpireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selectedApplications: (() { final guardedValue = map['selectedApplications']; if (guardedValue == null) return null; return NamespacedNamesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      selectedNamespaces: (() { final guardedValue = map['selectedNamespaces']; if (guardedValue == null) return null; return NamespacesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeCount: (() { final guardedValue = map['volumeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
