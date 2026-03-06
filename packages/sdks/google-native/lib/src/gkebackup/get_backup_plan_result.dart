// ignore_for_file: unused_element, unnecessary_cast

import 'backup_config_response.dart';
import 'retention_policy_response.dart';
import 'schedule_response.dart';

/// Result data returned by getBackupPlan.
class GetBackupPlanResult {
  /// Optional. Defines the configuration of Backups created via this BackupPlan.
  final BackupConfigResponse backupConfig;
  /// Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  final ScheduleResponse backupSchedule;
  /// Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final String cluster;
  /// The timestamp when this BackupPlan resource was created.
  final String createTime;
  /// Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  final bool deactivated;
  /// Optional. User specified descriptive string for this BackupPlan.
  final String description;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup plan from overwriting each other. It is strongly suggested that systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackupPlan`, and systems are expected to put that etag in the request to `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change will be applied to the same version of the resource.
  final String etag;
  /// Optional. A set of custom labels supplied by user.
  final Map<String, String> labels;
  /// The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*`
  final String name;
  /// The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  final int protectedPodCount;
  /// Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  final RetentionPolicyResponse retentionPolicy;
  /// State of the BackupPlan. This State field reflects the various stages a BackupPlan can be in during the Create operation. It will be set to "DEACTIVATED" if the BackupPlan is deactivated on an Update
  final String state;
  /// Human-readable description of why BackupPlan is in the current `state`
  final String stateReason;
  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  final String uid;
  /// The timestamp when this BackupPlan resource was last updated.
  final String updateTime;

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
    required this.backupConfig,
    required this.backupSchedule,
    required this.cluster,
    required this.createTime,
    required this.deactivated,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.protectedPodCount,
    required this.retentionPolicy,
    required this.state,
    required this.stateReason,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfig': backupConfig.toMap(),
      'backupSchedule': backupSchedule.toMap(),
      'cluster': cluster,
      'createTime': createTime,
      'deactivated': deactivated,
      'description': description,
      'etag': etag,
      'labels': labels,
      'name': name,
      'protectedPodCount': protectedPodCount,
      'retentionPolicy': retentionPolicy.toMap(),
      'state': state,
      'stateReason': stateReason,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetBackupPlanResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanResult(
      backupConfig: BackupConfigResponse.fromMap((map['backupConfig']! as Map).cast<String, dynamic>()),
      backupSchedule: ScheduleResponse.fromMap((map['backupSchedule']! as Map).cast<String, dynamic>()),
      cluster: map['cluster'] as String,
      createTime: map['createTime'] as String,
      deactivated: map['deactivated'] as bool,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      protectedPodCount: map['protectedPodCount'] as int,
      retentionPolicy: RetentionPolicyResponse.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stateReason: map['stateReason'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

