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
  final pulumi.Input<String>? description;
  /// The user-friendly name for the Exadata Database Storage Vault resource. The name does not need to be unique. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String> displayName;
  /// A `high_capacity_database_storage` block as defined below. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage> highCapacityDatabaseStorage;
  /// The Azure Region where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Exadata Database Storage Vault.
  final pulumi.Input<Map<String, String>>? tags;
  /// The time zone that you want to use for the Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created. For details, see [Time Zones](https://docs.oracle.com/en/cloud/paas/base-database/time-zone/).
  final pulumi.Input<String>? timeZone;
  /// Exadata Database Storage Vault zones. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [ExascaleDatabaseStorageVaultArgs].
  /// [additionalFlashCachePercentage] The size of additional Flash Cache in percentage of High Capacity database storage. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [description] Exadata Database Storage Vault description. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [displayName] The user-friendly name for the Exadata Database Storage Vault resource. The name does not need to be unique. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [highCapacityDatabaseStorage] A `high_capacity_database_storage` block as defined below. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [location] The Azure Region where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [name] The name which should be used for this Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [resourceGroupName] The name of the Resource Group where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  /// [tags] A mapping of tags which should be assigned to the Exadata Database Storage Vault.
  /// [timeZone] The time zone that you want to use for the Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created. For details, see [Time Zones](https://docs.oracle.com/en/cloud/paas/base-database/time-zone/).
  /// [zones] Exadata Database Storage Vault zones. Changing this forces a new Exadata Database Storage Vault to be created.
  ExascaleDatabaseStorageVaultArgs({
    required pulumi.Output<int> additionalFlashCachePercentage,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage> highCapacityDatabaseStorage,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timeZone,
    required pulumi.Output<List<String>> zones,
  }) :
      additionalFlashCachePercentage = pulumi.Input.asInput<int>(additionalFlashCachePercentage),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      highCapacityDatabaseStorage = pulumi.Input.asInput<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage>(highCapacityDatabaseStorage),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      zones = pulumi.Input.asInput<List<String>>(zones);

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
      additionalFlashCachePercentage: pulumi.Output.create<int>(map['additionalFlashCachePercentage'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      highCapacityDatabaseStorage: pulumi.Output.create<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage>(ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage.fromMap((map['highCapacityDatabaseStorage'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      zones: pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

