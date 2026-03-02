// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_encryption_config.dart';

/// Input properties used for looking up and filtering BackupVault resources.
class BackupVaultState {
  /// Access restriction for the backup vault. Default value is `WITHIN_ORGANIZATION` if not provided during creation.
  /// Default value is `WITHIN_ORGANIZATION`.
  /// Possible values are: `ACCESS_RESTRICTION_UNSPECIFIED`, `WITHIN_PROJECT`, `WITHIN_ORGANIZATION`, `UNRESTRICTED`, `WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA`.
  final pulumi.Input<String>? accessRestriction;
  /// Allow idempotent deletion of backup vault. The request will still succeed in case the backup vault does not exist.
  final pulumi.Input<bool>? allowMissing;
  /// Optional. User annotations. See https://google.aip.dev/128#annotations
  /// Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. The number of backups in this backup vault.
  final pulumi.Input<String>? backupCount;
  /// Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  final pulumi.Input<String>? backupMinimumEnforcedRetentionDuration;
  /// How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// Possible values are: `BACKUP_RETENTION_INHERITANCE_UNSPECIFIED`, `INHERIT_VAULT_RETENTION`, `MATCH_BACKUP_EXPIRE_TIME`.
  final pulumi.Input<String>? backupRetentionInheritance;
  /// Required. ID of the requesting object.
  final pulumi.Input<String>? backupVaultId;
  /// Output only. The time when the instance was created.
  final pulumi.Input<String>? createTime;
  /// Output only. Set to true when there are no backups nested under this resource.
  final pulumi.Input<bool>? deletable;
  /// Optional. The description of the BackupVault instance (2048 characters or less).
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. Time after which the BackupVault resource is locked.
  final pulumi.Input<String>? effectiveTime;
  /// Encryption configuration for the backup vault.
  /// Structure is documented below.
  final pulumi.Input<BackupVaultEncryptionConfig>? encryptionConfig;
  /// Optional. Server specified ETag for the backup vault resource to prevent simultaneous updates from overwiting each other.
  final pulumi.Input<String>? etag;
  /// (Optional, Deprecated)
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  ///
  /// > **Warning:** `force_delete` is deprecated and will be removed in a future major release. Use `ignore_inactive_datasources` instead.
  final pulumi.Input<bool>? forceDelete;
  /// If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// the restriction against conflicting retention periods. This conflict may occur when the
  /// expiration schedule defined by the associated backup plan is shorter than the minimum
  /// retention set by the backup vault.
  final pulumi.Input<bool>? forceUpdate;
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  final pulumi.Input<bool>? ignoreBackupPlanReferences;
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  final pulumi.Input<bool>? ignoreInactiveDatasources;
  /// Optional. Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The GCP location for the backup vault.
  final pulumi.Input<String>? location;
  /// Output only. Identifier. The resource name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Service account used by the BackupVault Service for this BackupVault.  The user should grant this account permissions in their workload project to enable the service to run backups and restores there.
  final pulumi.Input<String>? serviceAccount;
  /// Output only. The BackupVault resource instance state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// ERROR
  final pulumi.Input<String>? state;
  /// Output only. Total size of the storage used by all backup resources.
  final pulumi.Input<String>? totalStoredBytes;
  /// Output only. Output only Immutable after resource creation until resource deletion.
  final pulumi.Input<String>? uid;
  /// Output only. The time when the instance was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BackupVaultState].
  /// [accessRestriction] Access restriction for the backup vault. Default value is `WITHIN_ORGANIZATION` if not provided during creation.
  /// [allowMissing] Allow idempotent deletion of backup vault. The request will still succeed in case the backup vault does not exist.
  /// [annotations] Optional. User annotations. See https://google.aip.dev/128#annotations
  /// [backupCount] Output only. The number of backups in this backup vault.
  /// [backupMinimumEnforcedRetentionDuration] Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  /// [backupRetentionInheritance] How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// [backupVaultId] Required. ID of the requesting object.
  /// [createTime] Output only. The time when the instance was created.
  /// [deletable] Output only. Set to true when there are no backups nested under this resource.
  /// [description] Optional. The description of the BackupVault instance (2048 characters or less).
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveTime] Optional. Time after which the BackupVault resource is locked.
  /// [encryptionConfig] Encryption configuration for the backup vault.
  /// [etag] Optional. Server specified ETag for the backup vault resource to prevent simultaneous updates from overwiting each other.
  /// [forceDelete] (Optional, Deprecated)
  /// [forceUpdate] If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// [ignoreBackupPlanReferences] If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// [ignoreInactiveDatasources] If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] The GCP location for the backup vault.
  /// [name] Output only. Identifier. The resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceAccount] Output only. Service account used by the BackupVault Service for this BackupVault.  The user should grant this account permissions in their workload project to enable the service to run backups and restores there.
  /// [state] Output only. The BackupVault resource instance state.
  /// [totalStoredBytes] Output only. Total size of the storage used by all backup resources.
  /// [uid] Output only. Output only Immutable after resource creation until resource deletion.
  /// [updateTime] Output only. The time when the instance was updated.
  BackupVaultState({
    this.accessRestriction,
    this.allowMissing,
    this.annotations,
    this.backupCount,
    this.backupMinimumEnforcedRetentionDuration,
    this.backupRetentionInheritance,
    this.backupVaultId,
    this.createTime,
    this.deletable,
    this.description,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.effectiveTime,
    this.encryptionConfig,
    this.etag,
    this.forceDelete,
    this.forceUpdate,
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
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'effectiveTime': ?effectiveTime,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<BackupVaultEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'etag': ?etag,
      'forceDelete': ?forceDelete,
      'forceUpdate': ?forceUpdate,
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

  factory BackupVaultState.fromMap(Map<String, dynamic> map) {
    return BackupVaultState(
      accessRestriction: map['accessRestriction'] == null ? null : (map['accessRestriction']! as String).input(),
      allowMissing: map['allowMissing'] == null ? null : (map['allowMissing']! as bool).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      backupCount: map['backupCount'] == null ? null : (map['backupCount']! as String).input(),
      backupMinimumEnforcedRetentionDuration: map['backupMinimumEnforcedRetentionDuration'] == null ? null : (map['backupMinimumEnforcedRetentionDuration']! as String).input(),
      backupRetentionInheritance: map['backupRetentionInheritance'] == null ? null : (map['backupRetentionInheritance']! as String).input(),
      backupVaultId: map['backupVaultId'] == null ? null : (map['backupVaultId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deletable: map['deletable'] == null ? null : (map['deletable']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime']! as String).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (BackupVaultEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete']! as bool).input(),
      forceUpdate: map['forceUpdate'] == null ? null : (map['forceUpdate']! as bool).input(),
      ignoreBackupPlanReferences: map['ignoreBackupPlanReferences'] == null ? null : (map['ignoreBackupPlanReferences']! as bool).input(),
      ignoreInactiveDatasources: map['ignoreInactiveDatasources'] == null ? null : (map['ignoreInactiveDatasources']! as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      totalStoredBytes: map['totalStoredBytes'] == null ? null : (map['totalStoredBytes']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

