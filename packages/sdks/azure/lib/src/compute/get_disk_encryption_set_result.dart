// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_encryption_set_identity.dart';

/// Result data returned by getDiskEncryptionSet.
class GetDiskEncryptionSetResult {
  /// Is the Azure Disk Encryption Set Key automatically rotated to latest version?
  final bool? autoKeyRotationEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetDiskEncryptionSetIdentity>? identities;
  /// The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service.
  final String? keyVaultKeyUrl;
  /// The location where the Disk Encryption Set exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Disk Encryption Set.
  final Map<String, String>? tags;

  /// Creates a new [GetDiskEncryptionSetResult].
  /// [autoKeyRotationEnabled] Is the Azure Disk Encryption Set Key automatically rotated to latest version?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [keyVaultKeyUrl] The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service.
  /// [location] The location where the Disk Encryption Set exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Disk Encryption Set.
  const GetDiskEncryptionSetResult({
    this.autoKeyRotationEnabled,
    this.id,
    this.identities,
    this.keyVaultKeyUrl,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoKeyRotationEnabled': ?autoKeyRotationEnabled,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiskEncryptionSetIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'keyVaultKeyUrl': ?keyVaultKeyUrl,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetDiskEncryptionSetResult.fromMap(Map<String, dynamic> map) {
    return GetDiskEncryptionSetResult(
      autoKeyRotationEnabled: (() { final guardedValue = map['autoKeyRotationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiskEncryptionSetIdentity>(guardedValue, (value) => GetDiskEncryptionSetIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      keyVaultKeyUrl: (() { final guardedValue = map['keyVaultKeyUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
