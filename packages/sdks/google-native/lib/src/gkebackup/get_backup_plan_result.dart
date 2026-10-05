// ignore_for_file: unused_element, unnecessary_cast

import 'backup_config_response.dart';
import 'retention_policy_response.dart';
import 'schedule_response.dart';

/// Result data returned by getBackupPlan.
class GetBackupPlanResult {
  /// Optional. Defines the configuration of Backups created via this BackupPlan.
  final BackupConfigResponse? backupConfig;
  /// Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  final ScheduleResponse? backupSchedule;
  /// Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final String? cluster;
  /// The timestamp when this BackupPlan resource was created.
  final String? createTime;
  /// Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  final bool? deactivated;
  /// Optional. User specified descriptive string for this BackupPlan.
  final String? description;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup plan from overwriting each other. It is strongly suggested that systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackupPlan`, and systems are expected to put that etag in the request to `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change will be applied to the same version of the resource.
  final String? etag;
  /// Optional. A set of custom labels supplied by user.
  final Map<String, String>? labels;
  /// The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*`
  final String? name;
  /// The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  final int? protectedPodCount;
  /// Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  final RetentionPolicyResponse? retentionPolicy;
  /// State of the BackupPlan. This State field reflects the various stages a BackupPlan can be in during the Create operation. It will be set to "DEACTIVATED" if the BackupPlan is deactivated on an Update
  final String? state;
  /// Human-readable description of why BackupPlan is in the current `state`
  final String? stateReason;
  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  final String? uid;
  /// The timestamp when this BackupPlan resource was last updated.
  final String? updateTime;

  /// Creates a new [GetBackupPlanResult].
  /// [backupConfig] Optional. Defines the configuration of Backups created via this BackupPlan.
  /// [backupSchedule] Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  /// [cluster] Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  /// [createTime] The timestamp when this BackupPlan resource was created.
  /// [deactivated] Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  /// [description] Optional. User specified descriptive string for this BackupPlan.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup plan from overwriting each other. It is strongly suggested that systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackupPlan`, and systems are expected to put that etag in the request to `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change will be applied to the same version of the resource.
  /// [labels] Optional. A set of custom labels supplied by user.
  /// [name] The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*`
  /// [protectedPodCount] The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  /// [retentionPolicy] Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  /// [state] State of the BackupPlan. This State field reflects the various stages a BackupPlan can be in during the Create operation. It will be set to "DEACTIVATED" if the BackupPlan is deactivated on an Update
  /// [stateReason] Human-readable description of why BackupPlan is in the current `state`
  /// [uid] Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  /// [updateTime] The timestamp when this BackupPlan resource was last updated.
  const GetBackupPlanResult({
    this.backupConfig,
    this.backupSchedule,
    this.cluster,
    this.createTime,
    this.deactivated,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.protectedPodCount,
    this.retentionPolicy,
    this.state,
    this.stateReason,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfig': ?backupConfig?.toMap(),
      'backupSchedule': ?backupSchedule?.toMap(),
      'cluster': ?cluster,
      'createTime': ?createTime,
      'deactivated': ?deactivated,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'protectedPodCount': ?protectedPodCount,
      'retentionPolicy': ?retentionPolicy?.toMap(),
      'state': ?state,
      'stateReason': ?stateReason,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetBackupPlanResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanResult(
      backupConfig: (() { final guardedValue = map['backupConfig']; if (guardedValue == null) return null; return BackupConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      backupSchedule: (() { final guardedValue = map['backupSchedule']; if (guardedValue == null) return null; return ScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deactivated: (() { final guardedValue = map['deactivated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectedPodCount: (() { final guardedValue = map['protectedPodCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return RetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
