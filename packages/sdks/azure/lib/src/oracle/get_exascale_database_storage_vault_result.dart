// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exascale_database_storage_vault_high_capacity_database_storage.dart';

/// Result data returned by getExascaleDatabaseStorageVault.
class GetExascaleDatabaseStorageVaultResult {
  /// The size of additional Flash Cache in percentage of High Capacity database storage.
  final int? additionalFlashCachePercentage;
  /// Exadata Database Storage Vault description.
  final String? description;
  /// The user-friendly name for the Exadata Database Storage Vault.
  final String? displayName;
  /// A `highCapacityDatabaseStorage` block as defined below.
  final List<GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage>? highCapacityDatabaseStorages;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Additional information about the current lifecycle state.
  final String? lifecycleDetails;
  /// Exadata Database Storage Vault lifecycle state enum.
  final String? lifecycleState;
  /// The Azure Region where the Exadata Database Storage Vault exists.
  final String? location;
  final String? name;
  /// The URL of the resource in the OCI console.
  final String? ociUrl;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Exadata Database Storage Vault.
  final String? ocid;
  final String? resourceGroupName;
  /// The time zone of the Exadata Database Storage Vault.
  final String? timeZone;
  /// The number of Exadata virtual machine clusters used the Exadata Database Storage Vault.
  final int? virtualMachineClusterCount;
  /// The Exadata Database Storage Vault Azure zones.
  final List<String>? zones;

  /// Creates a new [GetExascaleDatabaseStorageVaultResult].
  /// [additionalFlashCachePercentage] The size of additional Flash Cache in percentage of High Capacity database storage.
  /// [description] Exadata Database Storage Vault description.
  /// [displayName] The user-friendly name for the Exadata Database Storage Vault.
  /// [highCapacityDatabaseStorages] A `highCapacityDatabaseStorage` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lifecycleDetails] Additional information about the current lifecycle state.
  /// [lifecycleState] Exadata Database Storage Vault lifecycle state enum.
  /// [location] The Azure Region where the Exadata Database Storage Vault exists.
  /// [name] Optional.
  /// [ociUrl] The URL of the resource in the OCI console.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Exadata Database Storage Vault.
  /// [resourceGroupName] Optional.
  /// [timeZone] The time zone of the Exadata Database Storage Vault.
  /// [virtualMachineClusterCount] The number of Exadata virtual machine clusters used the Exadata Database Storage Vault.
  /// [zones] The Exadata Database Storage Vault Azure zones.
  const GetExascaleDatabaseStorageVaultResult({
    this.additionalFlashCachePercentage,
    this.description,
    this.displayName,
    this.highCapacityDatabaseStorages,
    this.id,
    this.lifecycleDetails,
    this.lifecycleState,
    this.location,
    this.name,
    this.ociUrl,
    this.ocid,
    this.resourceGroupName,
    this.timeZone,
    this.virtualMachineClusterCount,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFlashCachePercentage': ?additionalFlashCachePercentage,
      'description': ?description,
      'displayName': ?displayName,
      'highCapacityDatabaseStorages': ?(() { final guardedValue = highCapacityDatabaseStorages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'location': ?location,
      'name': ?name,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'resourceGroupName': ?resourceGroupName,
      'timeZone': ?timeZone,
      'virtualMachineClusterCount': ?virtualMachineClusterCount,
      'zones': ?zones,
    };
  }

  factory GetExascaleDatabaseStorageVaultResult.fromMap(Map<String, dynamic> map) {
    return GetExascaleDatabaseStorageVaultResult(
      additionalFlashCachePercentage: (() { final guardedValue = map['additionalFlashCachePercentage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      highCapacityDatabaseStorages: (() { final guardedValue = map['highCapacityDatabaseStorages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage>(guardedValue, (value) => GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleDetails: (() { final guardedValue = map['lifecycleDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachineClusterCount: (() { final guardedValue = map['virtualMachineClusterCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
