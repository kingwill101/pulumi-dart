// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_vault_identity.dart';

/// Result data returned by getBackupVault.
class GetBackupVaultResult {
  /// Specifies the type of the data store.
  final String datastoreType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `identity` block as defined below.
  final List<GetBackupVaultIdentity> identities;

  /// The Azure Region where the Backup Vault exists.
  final String location;
  final String name;

  /// Specifies the backup storage redundancy.
  final String redundancy;
  final String resourceGroupName;

  /// A mapping of tags which are assigned to the Backup Vault.
  final Map<String, String> tags;

  /// Creates a new [GetBackupVaultResult].
  /// [datastoreType] Specifies the type of the data store.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] The Azure Region where the Backup Vault exists.
  /// [name] Required.
  /// [redundancy] Specifies the backup storage redundancy.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags which are assigned to the Backup Vault.
  GetBackupVaultResult({
    required this.datastoreType,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.redundancy,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreType': datastoreType,
      'id': id,
      'identities':
          pulumi.Input.encodeList<GetBackupVaultIdentity, Map<String, dynamic>>(
            identities,
            (value) => value.toMap(),
          ),
      'location': location,
      'name': name,
      'redundancy': redundancy,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetBackupVaultResult.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultResult(
      datastoreType: map['datastoreType'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetBackupVaultIdentity>(
        map['identities']!,
        (value) => GetBackupVaultIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      location: map['location'] as String,
      name: map['name'] as String,
      redundancy: map['redundancy'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
