// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_rule.dart';

/// {@template pulumi_backupdisasterrecovery_backup_plan_backup_plan_args_doc}
/// The set of arguments for BackupPlan.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_backup_plan_backup_plan_args_doc}
class BackupPlanArgs {
  /// The ID of the backup plan
  final pulumi.Input<String> backupPlanId;
  /// The backup rules for this `BackupPlan`. There must be at least one `BackupRule` message.
  /// Structure is documented below.
  final pulumi.Input<List<BackupPlanBackupRule>> backupRules;
  /// Backup vault where the backups gets stored using this Backup plan.
  final pulumi.Input<String> backupVault;
  /// The description allows for additional details about `BackupPlan` and its use cases to be provided.
  final pulumi.Input<String>? description;
  /// The location for the backup plan
  final pulumi.Input<String> location;
  /// This is only applicable for CloudSql resource. Days for which logs will be stored. This value should be greater than or equal to minimum enforced log retention duration of the backup vault.
  final pulumi.Input<int>? logRetentionDays;
  /// The maximum number of days for which an on-demand backup taken with custom retention can be retained.
  final pulumi.Input<int>? maxCustomOnDemandRetentionDays;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource type to which the `BackupPlan` will be applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", "sqladmin.googleapis.com/Instance" and "storage.googleapis.com/Bucket".
  final pulumi.Input<String> resourceType;

  /// Creates a new [BackupPlanArgs].
  /// [backupPlanId] The ID of the backup plan
  /// [backupRules] The backup rules for this `BackupPlan`. There must be at least one `BackupRule` message.
  /// [backupVault] Backup vault where the backups gets stored using this Backup plan.
  /// [description] The description allows for additional details about `BackupPlan` and its use cases to be provided.
  /// [location] The location for the backup plan
  /// [logRetentionDays] This is only applicable for CloudSql resource. Days for which logs will be stored. This value should be greater than or equal to minimum enforced log retention duration of the backup vault.
  /// [maxCustomOnDemandRetentionDays] The maximum number of days for which an on-demand backup taken with custom retention can be retained.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceType] The resource type to which the `BackupPlan` will be applied.
  BackupPlanArgs({
    required this.backupPlanId,
    required this.backupRules,
    required this.backupVault,
    this.description,
    required this.location,
    this.logRetentionDays,
    this.maxCustomOnDemandRetentionDays,
    this.project,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanId': backupPlanId,
      'backupRules': pulumi.Input.mapInputValue<List<BackupPlanBackupRule>, List<Map<String, dynamic>>>(backupRules, (value) => pulumi.Input.encodeList<BackupPlanBackupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backupVault': backupVault,
      'description': ?description,
      'location': location,
      'logRetentionDays': ?logRetentionDays,
      'maxCustomOnDemandRetentionDays': ?maxCustomOnDemandRetentionDays,
      'project': ?project,
      'resourceType': resourceType,
    };
  }

  factory BackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs(
      backupPlanId: (map['backupPlanId'] as String).input(),
      backupRules: (pulumi.Input.decodeList<BackupPlanBackupRule>(map['backupRules'], (value) => BackupPlanBackupRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backupVault: (map['backupVault'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: (map['location'] as String).input(),
      logRetentionDays: map['logRetentionDays'] == null ? null : (map['logRetentionDays']! as int).input(),
      maxCustomOnDemandRetentionDays: map['maxCustomOnDemandRetentionDays'] == null ? null : (map['maxCustomOnDemandRetentionDays']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

