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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. The description of the BackupVault instance (2048 characters or less).
  final pulumi.Input<String>? description;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
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
  /// &gt; **Warning:** `forceDelete` is deprecated and will be removed in a future major release. Use `ignoreInactiveDatasources` instead.
  final pulumi.Input<bool>? forceDelete;
  /// If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// the restriction against conflicting retention periods. This conflict may occur when the
  /// expiration schedule defined by the associated backup plan is shorter than the minimum
  /// retention set by the backup vault.
  final pulumi.Input<bool>? forceUpdate;
  /// If set to true, we will force update access restriction even if some non compliant data sources are present.
  final pulumi.Input<bool>? forceUpdateAccessRestriction;
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  final pulumi.Input<bool>? ignoreBackupPlanReferences;
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  final pulumi.Input<bool>? ignoreInactiveDatasources;
  /// Optional. Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// UPDATING
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. The description of the BackupVault instance (2048 characters or less).
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveTime] Optional. Time after which the BackupVault resource is locked.
  /// [encryptionConfig] Encryption configuration for the backup vault.
  /// [etag] Optional. Server specified ETag for the backup vault resource to prevent simultaneous updates from overwiting each other.
  /// [forceDelete] (Optional, Deprecated)
  /// [forceUpdate] If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// [forceUpdateAccessRestriction] If set to true, we will force update access restriction even if some non compliant data sources are present.
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
  const BackupVaultState({
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
    this.encryptionConfig,
    this.etag,
    this.forceDelete,
    this.forceUpdate,
    this.forceUpdateAccessRestriction,
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
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<BackupVaultEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'etag': ?etag,
      'forceDelete': ?forceDelete,
      'forceUpdate': ?forceUpdate,
      'forceUpdateAccessRestriction': ?forceUpdateAccessRestriction,
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
      accessRestriction: (() { final guardedValue = map['accessRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowMissing: (() { final guardedValue = map['allowMissing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      backupCount: (() { final guardedValue = map['backupCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupMinimumEnforcedRetentionDuration: (() { final guardedValue = map['backupMinimumEnforcedRetentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupRetentionInheritance: (() { final guardedValue = map['backupRetentionInheritance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupVaultId: (() { final guardedValue = map['backupVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletable: (() { final guardedValue = map['deletable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupVaultEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdate: (() { final guardedValue = map['forceUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdateAccessRestriction: (() { final guardedValue = map['forceUpdateAccessRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreBackupPlanReferences: (() { final guardedValue = map['ignoreBackupPlanReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreInactiveDatasources: (() { final guardedValue = map['ignoreInactiveDatasources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalStoredBytes: (() { final guardedValue = map['totalStoredBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
