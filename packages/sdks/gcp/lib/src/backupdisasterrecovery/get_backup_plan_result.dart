// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_backup_rule.dart';
import 'get_backup_plan_compute_instance_backup_plan_property.dart';
import 'get_backup_plan_disk_backup_plan_property.dart';

/// Result data returned by getBackupPlan.
class GetBackupPlanResult {
  final String backupPlanId;
  final List<GetBackupPlanBackupRule> backupRules;
  final String backupVault;
  final String backupVaultServiceAccount;
  final List<GetBackupPlanComputeInstanceBackupPlanProperty> computeInstanceBackupPlanProperties;
  final String createTime;
  final String deletionPolicy;
  final String description;
  final List<GetBackupPlanDiskBackupPlanProperty> diskBackupPlanProperties;
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
  /// [computeInstanceBackupPlanProperties] Required.
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [diskBackupPlanProperties] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [logRetentionDays] Required.
  /// [maxCustomOnDemandRetentionDays] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [resourceType] Required.
  /// [supportedResourceTypes] Required.
  /// [updateTime] Required.
  const GetBackupPlanResult({
    required this.backupPlanId,
    required this.backupRules,
    required this.backupVault,
    required this.backupVaultServiceAccount,
    required this.computeInstanceBackupPlanProperties,
    required this.createTime,
    required this.deletionPolicy,
    required this.description,
    required this.diskBackupPlanProperties,
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
      'computeInstanceBackupPlanProperties': pulumi.Input.encodeList<GetBackupPlanComputeInstanceBackupPlanProperty, Map<String, dynamic>>(computeInstanceBackupPlanProperties, (value) => value.toMap()),
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'diskBackupPlanProperties': pulumi.Input.encodeList<GetBackupPlanDiskBackupPlanProperty, Map<String, dynamic>>(diskBackupPlanProperties, (value) => value.toMap()),
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
      computeInstanceBackupPlanProperties: pulumi.Input.decodeList<GetBackupPlanComputeInstanceBackupPlanProperty>(map['computeInstanceBackupPlanProperties']!, (value) => GetBackupPlanComputeInstanceBackupPlanProperty.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      diskBackupPlanProperties: pulumi.Input.decodeList<GetBackupPlanDiskBackupPlanProperty>(map['diskBackupPlanProperties']!, (value) => GetBackupPlanDiskBackupPlanProperty.fromMap((value as Map).cast<String, dynamic>())),
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
