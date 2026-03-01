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
  /// Create time of the backup vault. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Name of the Backup vault created in backup region.
  final pulumi.Input<String>? destinationBackupVault;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
  /// [createTime] Create time of the backup vault. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [description] An optional description of this resource.
  /// [destinationBackupVault] Name of the Backup vault created in backup region.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location (region) of the backup vault.
  /// [name] The resource name of the backup vault. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sourceBackupVault] Name of the Backup vault created in source region.
  /// [sourceRegion] Region in which the backup vault is created.
  /// [state] The state of the Backup Vault.
  BackupVaultState({
    pulumi.Output<String>? backupRegion,
    pulumi.Output<BackupVaultBackupRetentionPolicy>? backupRetentionPolicy,
    pulumi.Output<String>? backupVaultType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationBackupVault,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? sourceBackupVault,
    pulumi.Output<String>? sourceRegion,
    pulumi.Output<String>? state,
  }) :
      backupRegion = pulumi.Input.asOptionalInput<String>(backupRegion),
      backupRetentionPolicy = pulumi.Input.asOptionalInput<BackupVaultBackupRetentionPolicy>(backupRetentionPolicy),
      backupVaultType = pulumi.Input.asOptionalInput<String>(backupVaultType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationBackupVault = pulumi.Input.asOptionalInput<String>(destinationBackupVault),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      sourceBackupVault = pulumi.Input.asOptionalInput<String>(sourceBackupVault),
      sourceRegion = pulumi.Input.asOptionalInput<String>(sourceRegion),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRegion': ?backupRegion,
      'backupRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<BackupVaultBackupRetentionPolicy, Map<String, dynamic>>(backupRetentionPolicy, (value) => value.toMap()),
      'backupVaultType': ?backupVaultType,
      'createTime': ?createTime,
      'description': ?description,
      'destinationBackupVault': ?destinationBackupVault,
      'effectiveLabels': ?effectiveLabels,
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
      backupRegion: map['backupRegion'] == null ? null : pulumi.Output.create<String>(map['backupRegion'] as String),
      backupRetentionPolicy: map['backupRetentionPolicy'] == null ? null : pulumi.Output.create<BackupVaultBackupRetentionPolicy>(BackupVaultBackupRetentionPolicy.fromMap((map['backupRetentionPolicy'] as Map).cast<String, dynamic>())),
      backupVaultType: map['backupVaultType'] == null ? null : pulumi.Output.create<String>(map['backupVaultType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationBackupVault: map['destinationBackupVault'] == null ? null : pulumi.Output.create<String>(map['destinationBackupVault'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      sourceBackupVault: map['sourceBackupVault'] == null ? null : pulumi.Output.create<String>(map['sourceBackupVault'] as String),
      sourceRegion: map['sourceRegion'] == null ? null : pulumi.Output.create<String>(map['sourceRegion'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

