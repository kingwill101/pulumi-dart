// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_backup_rule.dart';
import 'get_backup_plan_compute_instance_backup_plan_property.dart';
import 'get_backup_plan_disk_backup_plan_property.dart';

/// Result data returned by getBackupPlan.
class GetBackupPlanResult {
  final String? backupPlanId;
  final List<GetBackupPlanBackupRule>? backupRules;
  final String? backupVault;
  final String? backupVaultServiceAccount;
  final List<GetBackupPlanComputeInstanceBackupPlanProperty>? computeInstanceBackupPlanProperties;
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final List<GetBackupPlanDiskBackupPlanProperty>? diskBackupPlanProperties;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final int? logRetentionDays;
  final int? maxCustomOnDemandRetentionDays;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? resourceType;
  final List<String>? supportedResourceTypes;
  final String? updateTime;

  /// Creates a new [GetBackupPlanResult].
  /// [backupPlanId] Optional.
  /// [backupRules] Optional.
  /// [backupVault] Optional.
  /// [backupVaultServiceAccount] Optional.
  /// [computeInstanceBackupPlanProperties] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [diskBackupPlanProperties] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [logRetentionDays] Optional.
  /// [maxCustomOnDemandRetentionDays] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [resourceType] Optional.
  /// [supportedResourceTypes] Optional.
  /// [updateTime] Optional.
  const GetBackupPlanResult({
    this.backupPlanId,
    this.backupRules,
    this.backupVault,
    this.backupVaultServiceAccount,
    this.computeInstanceBackupPlanProperties,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.diskBackupPlanProperties,
    this.effectiveLabels,
    this.id,
    this.labels,
    this.location,
    this.logRetentionDays,
    this.maxCustomOnDemandRetentionDays,
    this.name,
    this.project,
    this.pulumiLabels,
    this.resourceType,
    this.supportedResourceTypes,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanId': ?backupPlanId,
      'backupRules': ?(() { final guardedValue = backupRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupPlanBackupRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backupVault': ?backupVault,
      'backupVaultServiceAccount': ?backupVaultServiceAccount,
      'computeInstanceBackupPlanProperties': ?(() { final guardedValue = computeInstanceBackupPlanProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupPlanComputeInstanceBackupPlanProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskBackupPlanProperties': ?(() { final guardedValue = diskBackupPlanProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupPlanDiskBackupPlanProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'logRetentionDays': ?logRetentionDays,
      'maxCustomOnDemandRetentionDays': ?maxCustomOnDemandRetentionDays,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resourceType': ?resourceType,
      'supportedResourceTypes': ?supportedResourceTypes,
      'updateTime': ?updateTime,
    };
  }

  factory GetBackupPlanResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanResult(
      backupPlanId: (() { final guardedValue = map['backupPlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupRules: (() { final guardedValue = map['backupRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupPlanBackupRule>(guardedValue, (value) => GetBackupPlanBackupRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      backupVault: (() { final guardedValue = map['backupVault']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupVaultServiceAccount: (() { final guardedValue = map['backupVaultServiceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeInstanceBackupPlanProperties: (() { final guardedValue = map['computeInstanceBackupPlanProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupPlanComputeInstanceBackupPlanProperty>(guardedValue, (value) => GetBackupPlanComputeInstanceBackupPlanProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskBackupPlanProperties: (() { final guardedValue = map['diskBackupPlanProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupPlanDiskBackupPlanProperty>(guardedValue, (value) => GetBackupPlanDiskBackupPlanProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logRetentionDays: (() { final guardedValue = map['logRetentionDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxCustomOnDemandRetentionDays: (() { final guardedValue = map['maxCustomOnDemandRetentionDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedResourceTypes: (() { final guardedValue = map['supportedResourceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
