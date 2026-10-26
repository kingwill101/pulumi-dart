// ignore_for_file: unused_element, unnecessary_cast

import 'restore_config_response.dart';

/// Result data returned by getRestore.
class GetRestoreResult {
  /// Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  final String? backup;
  /// The target cluster into which this Restore will restore data. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` Inherited from parent RestorePlan's cluster value.
  final String? cluster;
  /// Timestamp of when the restore operation completed.
  final String? completeTime;
  /// The timestamp when this Restore resource was created.
  final String? createTime;
  /// User specified descriptive string for this Restore.
  final String? description;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestore`, and systems are expected to put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure that their change will be applied to the same version of the resource.
  final String? etag;
  /// A set of custom labels supplied by user.
  final Map<String, String>? labels;
  /// The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`
  final String? name;
  /// Number of resources excluded during the restore execution.
  final int? resourcesExcludedCount;
  /// Number of resources that failed to be restored during the restore execution.
  final int? resourcesFailedCount;
  /// Number of resources restored during the restore execution.
  final int? resourcesRestoredCount;
  /// Configuration of the Restore. Inherited from parent RestorePlan's restore_config.
  final RestoreConfigResponse? restoreConfig;
  /// The current state of the Restore.
  final String? state;
  /// Human-readable description of why the Restore is in its current state.
  final String? stateReason;
  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  final String? uid;
  /// The timestamp when this Restore resource was last updated.
  final String? updateTime;
  /// Number of volumes restored during the restore execution.
  final int? volumesRestoredCount;

  /// Creates a new [GetRestoreResult].
  /// [backup] Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  /// [cluster] The target cluster into which this Restore will restore data. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` Inherited from parent RestorePlan's cluster value.
  /// [completeTime] Timestamp of when the restore operation completed.
  /// [createTime] The timestamp when this Restore resource was created.
  /// [description] User specified descriptive string for this Restore.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestore`, and systems are expected to put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure that their change will be applied to the same version of the resource.
  /// [labels] A set of custom labels supplied by user.
  /// [name] The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`
  /// [resourcesExcludedCount] Number of resources excluded during the restore execution.
  /// [resourcesFailedCount] Number of resources that failed to be restored during the restore execution.
  /// [resourcesRestoredCount] Number of resources restored during the restore execution.
  /// [restoreConfig] Configuration of the Restore. Inherited from parent RestorePlan's restore_config.
  /// [state] The current state of the Restore.
  /// [stateReason] Human-readable description of why the Restore is in its current state.
  /// [uid] Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  /// [updateTime] The timestamp when this Restore resource was last updated.
  /// [volumesRestoredCount] Number of volumes restored during the restore execution.
  const GetRestoreResult({
    this.backup,
    this.cluster,
    this.completeTime,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.resourcesExcludedCount,
    this.resourcesFailedCount,
    this.resourcesRestoredCount,
    this.restoreConfig,
    this.state,
    this.stateReason,
    this.uid,
    this.updateTime,
    this.volumesRestoredCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?backup,
      'cluster': ?cluster,
      'completeTime': ?completeTime,
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'resourcesExcludedCount': ?resourcesExcludedCount,
      'resourcesFailedCount': ?resourcesFailedCount,
      'resourcesRestoredCount': ?resourcesRestoredCount,
      'restoreConfig': ?restoreConfig?.toMap(),
      'state': ?state,
      'stateReason': ?stateReason,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'volumesRestoredCount': ?volumesRestoredCount,
    };
  }

  factory GetRestoreResult.fromMap(Map<String, dynamic> map) {
    return GetRestoreResult(
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completeTime: (() { final guardedValue = map['completeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcesExcludedCount: (() { final guardedValue = map['resourcesExcludedCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      resourcesFailedCount: (() { final guardedValue = map['resourcesFailedCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      resourcesRestoredCount: (() { final guardedValue = map['resourcesRestoredCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      restoreConfig: (() { final guardedValue = map['restoreConfig']; if (guardedValue == null) return null; return RestoreConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumesRestoredCount: (() { final guardedValue = map['volumesRestoredCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
