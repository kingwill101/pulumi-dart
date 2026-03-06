// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeGroupEncryption {
  /// The timestamp of the expiration time for the current version of the Customer Managed Key.
  final pulumi.Input<String> currentVersionedKeyExpirationTimestamp;
  /// The ID of the current versioned Key Vault Key in use.
  final pulumi.Input<String> currentVersionedKeyId;
  /// The Key Vault Key URI for Customer Managed Key encryption, which can be either a full URI or a versionless URI.
  final pulumi.Input<String> keyVaultKeyId;
  /// The timestamp of the last rotation of the Key Vault Key.
  final pulumi.Input<String> lastKeyRotationTimestamp;
  /// The ID of the User Assigned Identity used by this Elastic SAN Volume Group.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [GetVolumeGroupEncryption].
  /// [currentVersionedKeyExpirationTimestamp] The timestamp of the expiration time for the current version of the Customer Managed Key.
  /// [currentVersionedKeyId] The ID of the current versioned Key Vault Key in use.
  /// [keyVaultKeyId] The Key Vault Key URI for Customer Managed Key encryption, which can be either a full URI or a versionless URI.
  /// [lastKeyRotationTimestamp] The timestamp of the last rotation of the Key Vault Key.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity used by this Elastic SAN Volume Group.
  const GetVolumeGroupEncryption({
    required this.currentVersionedKeyExpirationTimestamp,
    required this.currentVersionedKeyId,
    required this.keyVaultKeyId,
    required this.lastKeyRotationTimestamp,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersionedKeyExpirationTimestamp': currentVersionedKeyExpirationTimestamp,
      'currentVersionedKeyId': currentVersionedKeyId,
      'keyVaultKeyId': keyVaultKeyId,
      'lastKeyRotationTimestamp': lastKeyRotationTimestamp,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory GetVolumeGroupEncryption.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupEncryption(
      currentVersionedKeyExpirationTimestamp: pulumi.Input.fromValue(map['currentVersionedKeyExpirationTimestamp'] as String),
      currentVersionedKeyId: pulumi.Input.fromValue(map['currentVersionedKeyId'] as String),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      lastKeyRotationTimestamp: pulumi.Input.fromValue(map['lastKeyRotationTimestamp'] as String),
      userAssignedIdentityId: pulumi.Input.fromValue(map['userAssignedIdentityId'] as String),
    );
  }
}

