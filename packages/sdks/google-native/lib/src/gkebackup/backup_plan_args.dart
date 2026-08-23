// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_config.dart';
import 'retention_policy.dart';
import 'schedule.dart';

/// {@template pulumi_gkebackup_v1_backup_plan_args_doc}
/// The set of arguments for BackupPlan.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_backup_plan_args_doc}
class BackupPlanArgs {
  /// Optional. Defines the configuration of Backups created via this BackupPlan.
  final pulumi.Input<BackupConfig>? backupConfig;
  /// Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of BackupPlans in this location
  final pulumi.Input<String> backupPlanId;
  /// Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  final pulumi.Input<Schedule>? backupSchedule;
  /// Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final pulumi.Input<String> cluster;
  /// Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  final pulumi.Input<bool>? deactivated;
  /// Optional. User specified descriptive string for this BackupPlan.
  final pulumi.Input<String>? description;
  /// Optional. A set of custom labels supplied by user.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  final pulumi.Input<RetentionPolicy>? retentionPolicy;

  /// Creates a new [BackupPlanArgs].
  /// [backupConfig] Optional. Defines the configuration of Backups created via this BackupPlan.
  /// [backupPlanId] Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of BackupPlans in this location
  /// [backupSchedule] Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  /// [cluster] Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  /// [deactivated] Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  /// [description] Optional. User specified descriptive string for this BackupPlan.
  /// [labels] Optional. A set of custom labels supplied by user.
  /// [location] Optional.
  /// [project] Optional.
  /// [retentionPolicy] Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  const BackupPlanArgs({
    this.backupConfig,
    required this.backupPlanId,
    this.backupSchedule,
    required this.cluster,
    this.deactivated,
    this.description,
    this.labels,
    this.location,
    this.project,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfig': ?pulumi.Input.mapOptionalInputValue<BackupConfig, Map<String, dynamic>>(backupConfig, (value) => value.toMap()),
      'backupPlanId': backupPlanId,
      'backupSchedule': ?pulumi.Input.mapOptionalInputValue<Schedule, Map<String, dynamic>>(backupSchedule, (value) => value.toMap()),
      'cluster': cluster,
      'deactivated': ?deactivated,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
    };
  }

  factory BackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs(
      backupConfig: (() { final guardedValue = map['backupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupPlanId: pulumi.Input.fromValue(map['backupPlanId'] as String),
      backupSchedule: (() { final guardedValue = map['backupSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Schedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      deactivated: (() { final guardedValue = map['deactivated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
