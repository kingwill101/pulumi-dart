// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exascale_database_storage_vault_high_capacity_database_storage.dart';

/// Input properties used for looking up and filtering ExascaleDatabaseStorageVault resources.
class ExascaleDatabaseStorageVaultState {
  /// The size of additional Flash Cache in percentage of High Capacity database storage. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<int>? additionalFlashCachePercentage;
  /// Exadata Database Storage Vault description. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String>? description;
  /// The user-friendly name for the Exadata Database Storage Vault resource. The name does not need to be unique. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String>? displayName;
  /// A `high_capacity_database_storage` block as defined below. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage>? highCapacityDatabaseStorage;
  /// The Azure Region where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Exadata Database Storage Vault.
  final pulumi.Input<Map<String, String>>? tags;
  /// The time zone that you want to use for the Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created. For details, see [Time Zones](https://docs.oracle.com/en/cloud/paas/base-database/time-zone/).
  final pulumi.Input<String>? timeZone;
  /// Exadata Database Storage Vault zones. Changing this forces a new Exadata Database Storage Vault to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ExascaleDatabaseStorageVaultState].
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
  const ExascaleDatabaseStorageVaultState({
    this.additionalFlashCachePercentage,
    this.description,
    this.displayName,
    this.highCapacityDatabaseStorage,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.timeZone,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFlashCachePercentage': ?additionalFlashCachePercentage,
      'description': ?description,
      'displayName': ?displayName,
      'highCapacityDatabaseStorage': ?pulumi.Input.mapOptionalInputValue<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage, Map<String, dynamic>>(highCapacityDatabaseStorage, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'timeZone': ?timeZone,
      'zones': ?zones,
    };
  }

  factory ExascaleDatabaseStorageVaultState.fromMap(Map<String, dynamic> map) {
    return ExascaleDatabaseStorageVaultState(
      additionalFlashCachePercentage: (() { final guardedValue = map['additionalFlashCachePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      highCapacityDatabaseStorage: (() { final guardedValue = map['highCapacityDatabaseStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

