// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_encryption_set_identity.dart';

/// Result data returned by getDiskEncryptionSet.
class GetDiskEncryptionSetResult {
  /// Is the Azure Disk Encryption Set Key automatically rotated to latest version?
  final bool autoKeyRotationEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetDiskEncryptionSetIdentity> identities;
  /// The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service.
  final String keyVaultKeyUrl;
  /// The location where the Disk Encryption Set exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Disk Encryption Set.
  final Map<String, String> tags;

  /// Creates a new [GetDiskEncryptionSetResult].
  /// [autoKeyRotationEnabled] Is the Azure Disk Encryption Set Key automatically rotated to latest version?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [keyVaultKeyUrl] The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service.
  /// [location] The location where the Disk Encryption Set exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Disk Encryption Set.
  const GetDiskEncryptionSetResult({
    required this.autoKeyRotationEnabled,
    required this.id,
    required this.identities,
    required this.keyVaultKeyUrl,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoKeyRotationEnabled': autoKeyRotationEnabled,
      'id': id,
      'identities': pulumi.Input.encodeList<GetDiskEncryptionSetIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'keyVaultKeyUrl': keyVaultKeyUrl,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetDiskEncryptionSetResult.fromMap(Map<String, dynamic> map) {
    return GetDiskEncryptionSetResult(
      autoKeyRotationEnabled: map['autoKeyRotationEnabled'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetDiskEncryptionSetIdentity>(map['identities']!, (value) => GetDiskEncryptionSetIdentity.fromMap((value as Map).cast<String, dynamic>())),
      keyVaultKeyUrl: map['keyVaultKeyUrl'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
