// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_rule.dart';

/// Input properties used for looking up and filtering BackupPlan resources.
class BackupPlanState {
  /// The ID of the backup plan
  final pulumi.Input<String>? backupPlanId;
  /// The backup rules for this `BackupPlan`. There must be at least one `BackupRule` message.
  /// Structure is documented below.
  final pulumi.Input<List<BackupPlanBackupRule>>? backupRules;
  /// Backup vault where the backups gets stored using this Backup plan.
  final pulumi.Input<String>? backupVault;
  /// The Google Cloud Platform Service Account to be used by the BackupVault for taking backups.
  final pulumi.Input<String>? backupVaultServiceAccount;
  /// When the `BackupPlan` was created.
  final pulumi.Input<String>? createTime;
  /// The description allows for additional details about `BackupPlan` and its use cases to be provided.
  final pulumi.Input<String>? description;
  /// The location for the backup plan
  final pulumi.Input<String>? location;
  /// This is only applicable for CloudSql resource. Days for which logs will be stored. This value should be greater than or equal to minimum enforced log retention duration of the backup vault.
  final pulumi.Input<int>? logRetentionDays;
  /// The maximum number of days for which an on-demand backup taken with custom retention can be retained.
  final pulumi.Input<int>? maxCustomOnDemandRetentionDays;
  /// The name of backup plan resource created
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource type to which the `BackupPlan` will be applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", "sqladmin.googleapis.com/Instance" and "storage.googleapis.com/Bucket".
  final pulumi.Input<String>? resourceType;
  /// The list of all resource types to which the `BackupPlan` can be applied.
  final pulumi.Input<List<String>>? supportedResourceTypes;
  /// When the `BackupPlan` was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BackupPlanState].
  /// [backupPlanId] The ID of the backup plan
  /// [backupRules] The backup rules for this `BackupPlan`. There must be at least one `BackupRule` message.
  /// [backupVault] Backup vault where the backups gets stored using this Backup plan.
  /// [backupVaultServiceAccount] The Google Cloud Platform Service Account to be used by the BackupVault for taking backups.
  /// [createTime] When the `BackupPlan` was created.
  /// [description] The description allows for additional details about `BackupPlan` and its use cases to be provided.
  /// [location] The location for the backup plan
  /// [logRetentionDays] This is only applicable for CloudSql resource. Days for which logs will be stored. This value should be greater than or equal to minimum enforced log retention duration of the backup vault.
  /// [maxCustomOnDemandRetentionDays] The maximum number of days for which an on-demand backup taken with custom retention can be retained.
  /// [name] The name of backup plan resource created
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceType] The resource type to which the `BackupPlan` will be applied.
  /// [supportedResourceTypes] The list of all resource types to which the `BackupPlan` can be applied.
  /// [updateTime] When the `BackupPlan` was last updated.
  BackupPlanState({
    this.backupPlanId,
    this.backupRules,
    this.backupVault,
    this.backupVaultServiceAccount,
    this.createTime,
    this.description,
    this.location,
    this.logRetentionDays,
    this.maxCustomOnDemandRetentionDays,
    this.name,
    this.project,
    this.resourceType,
    this.supportedResourceTypes,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanId': ?backupPlanId,
      'backupRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPlanBackupRule>, List<Map<String, dynamic>>>(backupRules, (value) => pulumi.Input.encodeList<BackupPlanBackupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backupVault': ?backupVault,
      'backupVaultServiceAccount': ?backupVaultServiceAccount,
      'createTime': ?createTime,
      'description': ?description,
      'location': ?location,
      'logRetentionDays': ?logRetentionDays,
      'maxCustomOnDemandRetentionDays': ?maxCustomOnDemandRetentionDays,
      'name': ?name,
      'project': ?project,
      'resourceType': ?resourceType,
      'supportedResourceTypes': ?supportedResourceTypes,
      'updateTime': ?updateTime,
    };
  }

  factory BackupPlanState.fromMap(Map<String, dynamic> map) {
    return BackupPlanState(
      backupPlanId: map['backupPlanId'] == null ? null : (map['backupPlanId'] as String).input(),
      backupRules: map['backupRules'] == null ? null : (pulumi.Input.decodeList<BackupPlanBackupRule>(map['backupRules'], (value) => BackupPlanBackupRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backupVault: map['backupVault'] == null ? null : (map['backupVault'] as String).input(),
      backupVaultServiceAccount: map['backupVaultServiceAccount'] == null ? null : (map['backupVaultServiceAccount'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logRetentionDays: map['logRetentionDays'] == null ? null : (map['logRetentionDays'] as int).input(),
      maxCustomOnDemandRetentionDays: map['maxCustomOnDemandRetentionDays'] == null ? null : (map['maxCustomOnDemandRetentionDays'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      supportedResourceTypes: map['supportedResourceTypes'] == null ? null : ((map['supportedResourceTypes'] as List).cast<String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

