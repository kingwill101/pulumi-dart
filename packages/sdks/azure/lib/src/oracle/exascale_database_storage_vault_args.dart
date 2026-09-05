// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exascale_database_storage_vault_high_capacity_database_storage.dart';

/// {@template pulumi_oracle_exascale_database_storage_vault_exascale_database_storage_vault_args_doc}
/// The set of arguments for ExascaleDatabaseStorageVault.
/// {@endtemplate}
/// {@macro pulumi_oracle_exascale_database_storage_vault_exascale_database_storage_vault_args_doc}
class ExascaleDatabaseStorageVaultArgs {
  /// The size of additional Flash Cache in percentage of High Capacity database storage. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<int> additionalFlashCachePercentage;
  /// Exadata Database Storage Vault description. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String?>? description;
  /// The user-friendly name for the Exadata Database Storage Vault resource. The name does not need to be unique. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String> displayName;
  /// A `highCapacityDatabaseStorage` block as defined below. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage> highCapacityDatabaseStorage;
  /// The Azure Region where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Exadata Database Storage Vault.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The time zone that you want to use for the Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created. For details, see [Time Zones](https://docs.oracle.com/en/cloud/paas/base-database/time-zone/).
  final pulumi.Input<String?>? timeZone;
  /// Exadata Database Storage Vault zones. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [ExascaleDatabaseStorageVaultArgs].
  /// [additionalFlashCachePercentage] The size of additional Flash Cache in percentage of High Capacity database storage. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [description] Exadata Database Storage Vault description. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [displayName] The user-friendly name for the Exadata Database Storage Vault resource. The name does not need to be unique. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [highCapacityDatabaseStorage] A `highCapacityDatabaseStorage` block as defined below. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [location] The Azure Region where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [name] The name which should be used for this Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [resourceGroupName] The name of the Resource Group where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [tags] A mapping of tags which should be assigned to the Exadata Database Storage Vault.
  /// [timeZone] The time zone that you want to use for the Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created. For details, see [Time Zones](https://docs.oracle.com/en/cloud/paas/base-database/time-zone/).
  /// [zones] Exadata Database Storage Vault zones. Changing this forces a new Exadata Database Storage Vault to be created.
  const ExascaleDatabaseStorageVaultArgs({
    required this.additionalFlashCachePercentage,
    this.description,
    required this.displayName,
    required this.highCapacityDatabaseStorage,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.timeZone,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFlashCachePercentage': additionalFlashCachePercentage,
      'description': ?description,
      'displayName': displayName,
      'highCapacityDatabaseStorage': pulumi.Input.mapInputValue<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage, Map<String, dynamic>>(highCapacityDatabaseStorage, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'timeZone': ?timeZone,
      'zones': zones,
    };
  }

  factory ExascaleDatabaseStorageVaultArgs.fromMap(Map<String, dynamic> map) {
    return ExascaleDatabaseStorageVaultArgs(
      additionalFlashCachePercentage: pulumi.Input.fromValue((map['additionalFlashCachePercentage'] as num).toInt()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      highCapacityDatabaseStorage: pulumi.Input.fromValue(ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage.fromMap((map['highCapacityDatabaseStorage']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
