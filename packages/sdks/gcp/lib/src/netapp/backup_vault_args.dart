// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_backup_retention_policy.dart';

/// {@template pulumi_netapp_backup_vault_backup_vault_args_doc}
/// The set of arguments for BackupVault.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_vault_backup_vault_args_doc}
class BackupVaultArgs {
  /// Region in which backup is stored.
  final pulumi.Input<String?>? backupRegion;
  /// Backup retention policy defining the retention of the backups.
  /// Structure is documented below.
  final pulumi.Input<BackupVaultBackupRetentionPolicy?>? backupRetentionPolicy;
  /// Type of the backup vault to be created. Default is IN_REGION.
  /// Possible values are: `BACKUP_VAULT_TYPE_UNSPECIFIED`, `IN_REGION`, `CROSS_REGION`.
  final pulumi.Input<String?>? backupVaultType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// Specifies the Key Management System (KMS) configuration to be used for
  /// backup encryption. Format:
  /// `projects/{{project}}/locations/{{location}}/kmsConfigs/{{kms_config}}`
  final pulumi.Input<String?>? kmsConfig;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Location (region) of the backup vault.
  final pulumi.Input<String> location;
  /// The resource name of the backup vault. Needs to be unique per location.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [BackupVaultArgs].
  /// [backupRegion] Region in which backup is stored.
  /// [backupRetentionPolicy] Backup retention policy defining the retention of the backups.
  /// [backupVaultType] Type of the backup vault to be created. Default is IN_REGION.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [kmsConfig] Specifies the Key Management System (KMS) configuration to be used for
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location (region) of the backup vault.
  /// [name] The resource name of the backup vault. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  const BackupVaultArgs({
    this.backupRegion,
    this.backupRetentionPolicy,
    this.backupVaultType,
    this.deletionPolicy,
    this.description,
    this.kmsConfig,
    this.labels,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRegion': ?backupRegion,
      'backupRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<BackupVaultBackupRetentionPolicy, Map<String, dynamic>>(backupRetentionPolicy, (value) => value.toMap()),
      'backupVaultType': ?backupVaultType,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'kmsConfig': ?kmsConfig,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory BackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs(
      backupRegion: (() { final guardedValue = map['backupRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupRetentionPolicy: (() { final guardedValue = map['backupRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupVaultBackupRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupVaultType: (() { final guardedValue = map['backupVaultType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsConfig: (() { final guardedValue = map['kmsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
