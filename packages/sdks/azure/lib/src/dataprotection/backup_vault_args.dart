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
  /// &gt; **Note:** The `crossRegionRestoreEnabled` can only be specified when `redundancy` is specified for `GeoRedundant`. Once `crossRegionRestoreEnabled` is enabled, it cannot be disabled.
  final pulumi.Input<bool>? crossRegionRestoreEnabled;
  /// Specifies the type of the data store. Possible values are `ArchiveStore`, `OperationalStore`, `SnapshotStore` and `VaultStore`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `SnapshotStore` will be removed in version 4.0 as it has been replaced by `OperationalStore`.
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
  /// &gt; **Note:** The `retentionDurationInDays` is the number of days for which deleted data is retained before being permanently deleted. Retention period till 14 days are free of cost, however, retention beyond 14 days may incur additional charges. The `retentionDurationInDays` is required when the `softDelete` is set to `On`.
  final pulumi.Input<double>? retentionDurationInDays;
  /// The state of soft delete for this Backup Vault. Possible values are `AlwaysOn`, `Off`, and `On`. Defaults to `On`.
  ///
  /// &gt; **Note:** Once the `softDelete` is set to `AlwaysOn`, the setting cannot be changed.
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
  const BackupVaultArgs({
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
      crossRegionRestoreEnabled: (() { final guardedValue = map['crossRegionRestoreEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      datastoreType: pulumi.Input.fromValue(map['datastoreType'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupVaultIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      immutability: (() { final guardedValue = map['immutability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redundancy: pulumi.Input.fromValue(map['redundancy'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionDurationInDays: (() { final guardedValue = map['retentionDurationInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      softDelete: (() { final guardedValue = map['softDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
