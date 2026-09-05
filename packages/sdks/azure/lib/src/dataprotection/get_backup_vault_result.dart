// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_vault_identity.dart';

/// Result data returned by getBackupVault.
class GetBackupVaultResult {
  /// Specifies the type of the data store.
  final String? datastoreType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetBackupVaultIdentity>? identities;
  /// The Azure Region where the Backup Vault exists.
  final String? location;
  final String? name;
  /// Specifies the backup storage redundancy.
  final String? redundancy;
  final String? resourceGroupName;
  /// A mapping of tags which are assigned to the Backup Vault.
  final Map<String, String>? tags;

  /// Creates a new [GetBackupVaultResult].
  /// [datastoreType] Specifies the type of the data store.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] The Azure Region where the Backup Vault exists.
  /// [name] Optional.
  /// [redundancy] Specifies the backup storage redundancy.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags which are assigned to the Backup Vault.
  const GetBackupVaultResult({
    this.datastoreType,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.redundancy,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreType': ?datastoreType,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupVaultIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'redundancy': ?redundancy,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetBackupVaultResult.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultResult(
      datastoreType: (() { final guardedValue = map['datastoreType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupVaultIdentity>(guardedValue, (value) => GetBackupVaultIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redundancy: (() { final guardedValue = map['redundancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
