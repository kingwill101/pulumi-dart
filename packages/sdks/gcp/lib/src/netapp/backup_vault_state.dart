// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_backup_retention_policy.dart';

/// Input properties used for looking up and filtering BackupVault resources.
class BackupVaultState {
  /// Region in which backup is stored.
  final pulumi.Input<String>? backupRegion;
  /// Backup retention policy defining the retention of the backups.
  /// Structure is documented below.
  final pulumi.Input<BackupVaultBackupRetentionPolicy>? backupRetentionPolicy;
  /// Type of the backup vault to be created. Default is IN_REGION.
  /// Possible values are: `BACKUP_VAULT_TYPE_UNSPECIFIED`, `IN_REGION`, `CROSS_REGION`.
  final pulumi.Input<String>? backupVaultType;
  /// The crypto key version used to encrypt the backup vault.
  /// Format:
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  final pulumi.Input<String>? backupsCryptoKeyVersion;
  /// Create time of the backup vault. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Name of the Backup vault created in backup region.
  final pulumi.Input<String>? destinationBackupVault;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Encryption state of customer-managed encryption keys (CMEK) backups.
  final pulumi.Input<String>? encryptionState;
  /// Specifies the Key Management System (KMS) configuration to be used for
  /// backup encryption. Format:
  /// `projects/{{project}}/locations/{{location}}/kmsConfigs/{{kms_config}}`
  final pulumi.Input<String>? kmsConfig;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location (region) of the backup vault.
  final pulumi.Input<String>? location;
  /// The resource name of the backup vault. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Name of the Backup vault created in source region.
  final pulumi.Input<String>? sourceBackupVault;
  /// Region in which the backup vault is created.
  final pulumi.Input<String>? sourceRegion;
  /// The state of the Backup Vault.
  final pulumi.Input<String>? state;

  /// Creates a new [BackupVaultState].
  /// [backupRegion] Region in which backup is stored.
  /// [backupRetentionPolicy] Backup retention policy defining the retention of the backups.
  /// [backupVaultType] Type of the backup vault to be created. Default is IN_REGION.
  /// [backupsCryptoKeyVersion] The crypto key version used to encrypt the backup vault.
  /// [createTime] Create time of the backup vault. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [destinationBackupVault] Name of the Backup vault created in backup region.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionState] Encryption state of customer-managed encryption keys (CMEK) backups.
  /// [kmsConfig] Specifies the Key Management System (KMS) configuration to be used for
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location (region) of the backup vault.
  /// [name] The resource name of the backup vault. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sourceBackupVault] Name of the Backup vault created in source region.
  /// [sourceRegion] Region in which the backup vault is created.
  /// [state] The state of the Backup Vault.
  const BackupVaultState({
    this.backupRegion,
    this.backupRetentionPolicy,
    this.backupVaultType,
    this.backupsCryptoKeyVersion,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.destinationBackupVault,
    this.effectiveLabels,
    this.encryptionState,
    this.kmsConfig,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.sourceBackupVault,
    this.sourceRegion,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRegion': ?backupRegion,
      'backupRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<BackupVaultBackupRetentionPolicy, Map<String, dynamic>>(backupRetentionPolicy, (value) => value.toMap()),
      'backupVaultType': ?backupVaultType,
      'backupsCryptoKeyVersion': ?backupsCryptoKeyVersion,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'destinationBackupVault': ?destinationBackupVault,
      'effectiveLabels': ?effectiveLabels,
      'encryptionState': ?encryptionState,
      'kmsConfig': ?kmsConfig,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'sourceBackupVault': ?sourceBackupVault,
      'sourceRegion': ?sourceRegion,
      'state': ?state,
    };
  }

  factory BackupVaultState.fromMap(Map<String, dynamic> map) {
    return BackupVaultState(
      backupRegion: (() { final guardedValue = map['backupRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupRetentionPolicy: (() { final guardedValue = map['backupRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupVaultBackupRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupVaultType: (() { final guardedValue = map['backupVaultType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupsCryptoKeyVersion: (() { final guardedValue = map['backupsCryptoKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationBackupVault: (() { final guardedValue = map['destinationBackupVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionState: (() { final guardedValue = map['encryptionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsConfig: (() { final guardedValue = map['kmsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sourceBackupVault: (() { final guardedValue = map['sourceBackupVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRegion: (() { final guardedValue = map['sourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
