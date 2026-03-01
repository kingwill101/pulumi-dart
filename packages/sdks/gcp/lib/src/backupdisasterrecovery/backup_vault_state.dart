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
    pulumi.Output<String>? accessRestriction,
    pulumi.Output<bool>? allowMissing,
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? backupCount,
    pulumi.Output<String>? backupMinimumEnforcedRetentionDuration,
    pulumi.Output<String>? backupRetentionInheritance,
    pulumi.Output<String>? backupVaultId,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletable,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<BackupVaultEncryptionConfig>? encryptionConfig,
    pulumi.Output<String>? etag,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<bool>? forceUpdate,
    pulumi.Output<bool>? ignoreBackupPlanReferences,
    pulumi.Output<bool>? ignoreInactiveDatasources,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<String>? state,
    pulumi.Output<String>? totalStoredBytes,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      accessRestriction = pulumi.Input.asOptionalInput<String>(accessRestriction),
      allowMissing = pulumi.Input.asOptionalInput<bool>(allowMissing),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      backupCount = pulumi.Input.asOptionalInput<String>(backupCount),
      backupMinimumEnforcedRetentionDuration = pulumi.Input.asOptionalInput<String>(backupMinimumEnforcedRetentionDuration),
      backupRetentionInheritance = pulumi.Input.asOptionalInput<String>(backupRetentionInheritance),
      backupVaultId = pulumi.Input.asOptionalInput<String>(backupVaultId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletable = pulumi.Input.asOptionalInput<bool>(deletable),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      encryptionConfig = pulumi.Input.asOptionalInput<BackupVaultEncryptionConfig>(encryptionConfig),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      forceUpdate = pulumi.Input.asOptionalInput<bool>(forceUpdate),
      ignoreBackupPlanReferences = pulumi.Input.asOptionalInput<bool>(ignoreBackupPlanReferences),
      ignoreInactiveDatasources = pulumi.Input.asOptionalInput<bool>(ignoreInactiveDatasources),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      state = pulumi.Input.asOptionalInput<String>(state),
      totalStoredBytes = pulumi.Input.asOptionalInput<String>(totalStoredBytes),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      accessRestriction: map['accessRestriction'] == null ? null : pulumi.Output.create<String>(map['accessRestriction'] as String),
      allowMissing: map['allowMissing'] == null ? null : pulumi.Output.create<bool>(map['allowMissing'] as bool),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      backupCount: map['backupCount'] == null ? null : pulumi.Output.create<String>(map['backupCount'] as String),
      backupMinimumEnforcedRetentionDuration: map['backupMinimumEnforcedRetentionDuration'] == null ? null : pulumi.Output.create<String>(map['backupMinimumEnforcedRetentionDuration'] as String),
      backupRetentionInheritance: map['backupRetentionInheritance'] == null ? null : pulumi.Output.create<String>(map['backupRetentionInheritance'] as String),
      backupVaultId: map['backupVaultId'] == null ? null : pulumi.Output.create<String>(map['backupVaultId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletable: map['deletable'] == null ? null : pulumi.Output.create<bool>(map['deletable'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<BackupVaultEncryptionConfig>(BackupVaultEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      forceUpdate: map['forceUpdate'] == null ? null : pulumi.Output.create<bool>(map['forceUpdate'] as bool),
      ignoreBackupPlanReferences: map['ignoreBackupPlanReferences'] == null ? null : pulumi.Output.create<bool>(map['ignoreBackupPlanReferences'] as bool),
      ignoreInactiveDatasources: map['ignoreInactiveDatasources'] == null ? null : pulumi.Output.create<bool>(map['ignoreInactiveDatasources'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      totalStoredBytes: map['totalStoredBytes'] == null ? null : pulumi.Output.create<String>(map['totalStoredBytes'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

