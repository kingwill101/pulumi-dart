// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_backup_rule.dart';

/// Result data returned by getBackupPlan.
class GetBackupPlanResult {
  final String backupPlanId;
  final List<GetBackupPlanBackupRule> backupRules;
  final String backupVault;
  final String backupVaultServiceAccount;
  final String createTime;
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final int logRetentionDays;
  final int maxCustomOnDemandRetentionDays;
  final String name;
  final String? project;
  final String resourceType;
  final List<String> supportedResourceTypes;
  final String updateTime;

  /// Creates a new [GetBackupPlanResult].
  /// [backupPlanId] Required.
  /// [backupRules] Required.
  /// [backupVault] Required.
  /// [backupVaultServiceAccount] Required.
  /// [createTime] Required.
  /// [description] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [logRetentionDays] Required.
  /// [maxCustomOnDemandRetentionDays] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [resourceType] Required.
  /// [supportedResourceTypes] Required.
  /// [updateTime] Required.
  GetBackupPlanResult({
    required this.backupPlanId,
    required this.backupRules,
    required this.backupVault,
    required this.backupVaultServiceAccount,
    required this.createTime,
    required this.description,
    required this.id,
    required this.location,
    required this.logRetentionDays,
    required this.maxCustomOnDemandRetentionDays,
    required this.name,
    this.project,
    required this.resourceType,
    required this.supportedResourceTypes,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanId': backupPlanId,
      'backupRules': pulumi.Input.encodeList<GetBackupPlanBackupRule, Map<String, dynamic>>(backupRules, (value) => value.toMap()),
      'backupVault': backupVault,
      'backupVaultServiceAccount': backupVaultServiceAccount,
      'createTime': createTime,
      'description': description,
      'id': id,
      'location': location,
      'logRetentionDays': logRetentionDays,
      'maxCustomOnDemandRetentionDays': maxCustomOnDemandRetentionDays,
      'name': name,
      'project': ?project,
      'resourceType': resourceType,
      'supportedResourceTypes': supportedResourceTypes,
      'updateTime': updateTime,
    };
  }

  factory GetBackupPlanResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanResult(
      backupPlanId: map['backupPlanId'] as String,
      backupRules: pulumi.Input.decodeList<GetBackupPlanBackupRule>(map['backupRules']!, (value) => GetBackupPlanBackupRule.fromMap((value as Map).cast<String, dynamic>())),
      backupVault: map['backupVault'] as String,
      backupVaultServiceAccount: map['backupVaultServiceAccount'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      logRetentionDays: map['logRetentionDays'] as int,
      maxCustomOnDemandRetentionDays: map['maxCustomOnDemandRetentionDays'] as int,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: map['resourceType'] as String,
      supportedResourceTypes: (map['supportedResourceTypes'] as List).cast<String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}

