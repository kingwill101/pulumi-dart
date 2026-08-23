// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_encryption_config.dart';

/// {@template pulumi_backupdisasterrecovery_backup_vault_backup_vault_args_doc}
/// The set of arguments for BackupVault.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_backup_vault_backup_vault_args_doc}
class BackupVaultArgs {
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
  /// Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  final pulumi.Input<String> backupMinimumEnforcedRetentionDuration;
  /// How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// Possible values are: `BACKUP_RETENTION_INHERITANCE_UNSPECIFIED`, `INHERIT_VAULT_RETENTION`, `MATCH_BACKUP_EXPIRE_TIME`.
  final pulumi.Input<String>? backupRetentionInheritance;
  /// Required. ID of the requesting object.
  final pulumi.Input<String> backupVaultId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. The description of the BackupVault instance (2048 characters or less).
  final pulumi.Input<String>? description;
  /// Optional. Time after which the BackupVault resource is locked.
  final pulumi.Input<String>? effectiveTime;
  /// Encryption configuration for the backup vault.
  /// Structure is documented below.
  final pulumi.Input<BackupVaultEncryptionConfig>? encryptionConfig;
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
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackupVaultArgs].
  /// [accessRestriction] Access restriction for the backup vault. Default value is `WITHIN_ORGANIZATION` if not provided during creation.
  /// [allowMissing] Allow idempotent deletion of backup vault. The request will still succeed in case the backup vault does not exist.
  /// [annotations] Optional. User annotations. See https://google.aip.dev/128#annotations
  /// [backupMinimumEnforcedRetentionDuration] Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  /// [backupRetentionInheritance] How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// [backupVaultId] Required. ID of the requesting object.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. The description of the BackupVault instance (2048 characters or less).
  /// [effectiveTime] Optional. Time after which the BackupVault resource is locked.
  /// [encryptionConfig] Encryption configuration for the backup vault.
  /// [forceDelete] (Optional, Deprecated)
  /// [forceUpdate] If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// [forceUpdateAccessRestriction] If set to true, we will force update access restriction even if some non compliant data sources are present.
  /// [ignoreBackupPlanReferences] If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// [ignoreInactiveDatasources] If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] The GCP location for the backup vault.
  /// [project] The ID of the project in which the resource belongs.
  const BackupVaultArgs({
    this.accessRestriction,
    this.allowMissing,
    this.annotations,
    required this.backupMinimumEnforcedRetentionDuration,
    this.backupRetentionInheritance,
    required this.backupVaultId,
    this.deletionPolicy,
    this.description,
    this.effectiveTime,
    this.encryptionConfig,
    this.forceDelete,
    this.forceUpdate,
    this.forceUpdateAccessRestriction,
    this.ignoreBackupPlanReferences,
    this.ignoreInactiveDatasources,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRestriction': ?accessRestriction,
      'allowMissing': ?allowMissing,
      'annotations': ?annotations,
      'backupMinimumEnforcedRetentionDuration': backupMinimumEnforcedRetentionDuration,
      'backupRetentionInheritance': ?backupRetentionInheritance,
      'backupVaultId': backupVaultId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveTime': ?effectiveTime,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<BackupVaultEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'forceDelete': ?forceDelete,
      'forceUpdate': ?forceUpdate,
      'forceUpdateAccessRestriction': ?forceUpdateAccessRestriction,
      'ignoreBackupPlanReferences': ?ignoreBackupPlanReferences,
      'ignoreInactiveDatasources': ?ignoreInactiveDatasources,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory BackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs(
      accessRestriction: (() { final guardedValue = map['accessRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowMissing: (() { final guardedValue = map['allowMissing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      backupMinimumEnforcedRetentionDuration: pulumi.Input.fromValue(map['backupMinimumEnforcedRetentionDuration'] as String),
      backupRetentionInheritance: (() { final guardedValue = map['backupRetentionInheritance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupVaultId: pulumi.Input.fromValue(map['backupVaultId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupVaultEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdate: (() { final guardedValue = map['forceUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdateAccessRestriction: (() { final guardedValue = map['forceUpdateAccessRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreBackupPlanReferences: (() { final guardedValue = map['ignoreBackupPlanReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreInactiveDatasources: (() { final guardedValue = map['ignoreInactiveDatasources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
