// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_identity.dart';

/// {@template pulumi_dataprotection_backup_vault_backup_vault_args_doc}
/// The set of arguments for BackupVault.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_vault_backup_vault_args_doc}
class BackupVaultArgs {
  /// Whether to enable cross-region restore for the Backup Vault.
  ///
  /// > **Note:** The `cross_region_restore_enabled` can only be specified when `redundancy` is specified for `GeoRedundant`. Once `cross_region_restore_enabled` is enabled, it cannot be disabled.
  final pulumi.Input<bool>? crossRegionRestoreEnabled;
  /// Specifies the type of the data store. Possible values are `ArchiveStore`, `OperationalStore`, `SnapshotStore` and `VaultStore`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `SnapshotStore` will be removed in version 4.0 as it has been replaced by `OperationalStore`.
  final pulumi.Input<String> datastoreType;
  /// An `identity` block as defined below.
  final pulumi.Input<BackupVaultIdentity>? identity;
  /// The state of immutability for this Backup Vault. Possible values are `Disabled`, `Locked`, and `Unlocked`. Defaults to `Disabled`.
  final pulumi.Input<String>? immutability;
  /// The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Backup Vault. Changing this forces a new Backup Vault to be created.
  final pulumi.Input<String>? name;
  /// Specifies the backup storage redundancy. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Changing this forces a new Backup Vault to be created.
  final pulumi.Input<String> redundancy;
  /// The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The soft delete retention duration for this Backup Vault. Possible values are between `14` and `180`. Defaults to `14`.
  ///
  /// > **Note:** The `retention_duration_in_days` is the number of days for which deleted data is retained before being permanently deleted. Retention period till 14 days are free of cost, however, retention beyond 14 days may incur additional charges. The `retention_duration_in_days` is required when the `soft_delete` is set to `On`.
  final pulumi.Input<double>? retentionDurationInDays;
  /// The state of soft delete for this Backup Vault. Possible values are `AlwaysOn`, `Off`, and `On`. Defaults to `On`.
  ///
  /// > **Note:** Once the `soft_delete` is set to `AlwaysOn`, the setting cannot be changed.
  final pulumi.Input<String>? softDelete;
  /// A mapping of tags which should be assigned to the Backup Vault.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BackupVaultArgs].
  /// [crossRegionRestoreEnabled] Whether to enable cross-region restore for the Backup Vault.
  /// [datastoreType] Specifies the type of the data store. Possible values are `ArchiveStore`, `OperationalStore`, `SnapshotStore` and `VaultStore`. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [immutability] The state of immutability for this Backup Vault. Possible values are `Disabled`, `Locked`, and `Unlocked`. Defaults to `Disabled`.
  /// [location] The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
  /// [name] Specifies the name of the Backup Vault. Changing this forces a new Backup Vault to be created.
  /// [redundancy] Specifies the backup storage redundancy. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Changing this forces a new Backup Vault to be created.
  /// [resourceGroupName] The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
  /// [retentionDurationInDays] The soft delete retention duration for this Backup Vault. Possible values are between `14` and `180`. Defaults to `14`.
  /// [softDelete] The state of soft delete for this Backup Vault. Possible values are `AlwaysOn`, `Off`, and `On`. Defaults to `On`.
  /// [tags] A mapping of tags which should be assigned to the Backup Vault.
  BackupVaultArgs({
    this.crossRegionRestoreEnabled,
    required this.datastoreType,
    this.identity,
    this.immutability,
    this.location,
    this.name,
    required this.redundancy,
    required this.resourceGroupName,
    this.retentionDurationInDays,
    this.softDelete,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionRestoreEnabled': ?crossRegionRestoreEnabled,
      'datastoreType': datastoreType,
      'identity': ?pulumi.Input.mapOptionalInputValue<BackupVaultIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'immutability': ?immutability,
      'location': ?location,
      'name': ?name,
      'redundancy': redundancy,
      'resourceGroupName': resourceGroupName,
      'retentionDurationInDays': ?retentionDurationInDays,
      'softDelete': ?softDelete,
      'tags': ?tags,
    };
  }

  factory BackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs(
      crossRegionRestoreEnabled: map['crossRegionRestoreEnabled'] == null ? null : (map['crossRegionRestoreEnabled']! as bool).input(),
      datastoreType: (map['datastoreType'] as String).input(),
      identity: map['identity'] == null ? null : (BackupVaultIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      immutability: map['immutability'] == null ? null : (map['immutability']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      redundancy: (map['redundancy'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      retentionDurationInDays: map['retentionDurationInDays'] == null ? null : (map['retentionDurationInDays']! as double).input(),
      softDelete: map['softDelete'] == null ? null : (map['softDelete']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

