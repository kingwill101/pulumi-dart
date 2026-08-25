// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_vault_encryption_config.dart';

/// Result data returned by getBackupVault.
class GetBackupVaultResult {
  final String? accessRestriction;
  final bool? allowMissing;
  final Map<String, String>? annotations;
  final String? backupCount;
  final String? backupMinimumEnforcedRetentionDuration;
  final String? backupRetentionInheritance;
  final String? backupVaultId;
  final String? createTime;
  final bool? deletable;
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveAnnotations;
  final Map<String, String>? effectiveLabels;
  final String? effectiveTime;
  final List<GetBackupVaultEncryptionConfig>? encryptionConfigs;
  final String? etag;
  final bool? forceDelete;
  final bool? forceUpdate;
  final bool? forceUpdateAccessRestriction;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? ignoreBackupPlanReferences;
  final bool? ignoreInactiveDatasources;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? serviceAccount;
  final String? state;
  final String? totalStoredBytes;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetBackupVaultResult].
  /// [accessRestriction] Optional.
  /// [allowMissing] Optional.
  /// [annotations] Optional.
  /// [backupCount] Optional.
  /// [backupMinimumEnforcedRetentionDuration] Optional.
  /// [backupRetentionInheritance] Optional.
  /// [backupVaultId] Optional.
  /// [createTime] Optional.
  /// [deletable] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] Optional.
  /// [effectiveTime] Optional.
  /// [encryptionConfigs] Optional.
  /// [etag] Optional.
  /// [forceDelete] Optional.
  /// [forceUpdate] Optional.
  /// [forceUpdateAccessRestriction] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreBackupPlanReferences] Optional.
  /// [ignoreInactiveDatasources] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [serviceAccount] Optional.
  /// [state] Optional.
  /// [totalStoredBytes] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetBackupVaultResult({
    this.accessRestriction,
    this.allowMissing,
    this.annotations,
    this.backupCount,
    this.backupMinimumEnforcedRetentionDuration,
    this.backupRetentionInheritance,
    this.backupVaultId,
    this.createTime,
    this.deletable,
    this.deletionPolicy,
    this.description,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.effectiveTime,
    this.encryptionConfigs,
    this.etag,
    this.forceDelete,
    this.forceUpdate,
    this.forceUpdateAccessRestriction,
    this.id,
    this.ignoreBackupPlanReferences,
    this.ignoreInactiveDatasources,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.serviceAccount,
    this.state,
    this.totalStoredBytes,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRestriction': ?accessRestriction,
      'allowMissing': ?allowMissing,
      'annotations': ?annotations,
      'backupCount': ?backupCount,
      'backupMinimumEnforcedRetentionDuration': ?backupMinimumEnforcedRetentionDuration,
      'backupRetentionInheritance': ?backupRetentionInheritance,
      'backupVaultId': ?backupVaultId,
      'createTime': ?createTime,
      'deletable': ?deletable,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'effectiveTime': ?effectiveTime,
      'encryptionConfigs': ?(() { final guardedValue = encryptionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupVaultEncryptionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'forceDelete': ?forceDelete,
      'forceUpdate': ?forceUpdate,
      'forceUpdateAccessRestriction': ?forceUpdateAccessRestriction,
      'id': ?id,
      'ignoreBackupPlanReferences': ?ignoreBackupPlanReferences,
      'ignoreInactiveDatasources': ?ignoreInactiveDatasources,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceAccount': ?serviceAccount,
      'state': ?state,
      'totalStoredBytes': ?totalStoredBytes,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetBackupVaultResult.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultResult(
      accessRestriction: (() { final guardedValue = map['accessRestriction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowMissing: (() { final guardedValue = map['allowMissing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      backupCount: (() { final guardedValue = map['backupCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupMinimumEnforcedRetentionDuration: (() { final guardedValue = map['backupMinimumEnforcedRetentionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupRetentionInheritance: (() { final guardedValue = map['backupRetentionInheritance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupVaultId: (() { final guardedValue = map['backupVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletable: (() { final guardedValue = map['deletable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfigs: (() { final guardedValue = map['encryptionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupVaultEncryptionConfig>(guardedValue, (value) => GetBackupVaultEncryptionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forceUpdate: (() { final guardedValue = map['forceUpdate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forceUpdateAccessRestriction: (() { final guardedValue = map['forceUpdateAccessRestriction']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ignoreBackupPlanReferences: (() { final guardedValue = map['ignoreBackupPlanReferences']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ignoreInactiveDatasources: (() { final guardedValue = map['ignoreInactiveDatasources']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalStoredBytes: (() { final guardedValue = map['totalStoredBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
