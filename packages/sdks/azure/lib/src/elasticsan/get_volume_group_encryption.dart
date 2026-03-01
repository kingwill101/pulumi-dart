// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeGroupEncryption {
  /// The timestamp of the expiration time for the current version of the Customer Managed Key.
  final String currentVersionedKeyExpirationTimestamp;
  /// The ID of the current versioned Key Vault Key in use.
  final String currentVersionedKeyId;
  /// The Key Vault Key URI for Customer Managed Key encryption, which can be either a full URI or a versionless URI.
  final String keyVaultKeyId;
  /// The timestamp of the last rotation of the Key Vault Key.
  final String lastKeyRotationTimestamp;
  /// The ID of the User Assigned Identity used by this Elastic SAN Volume Group.
  final String userAssignedIdentityId;

  /// Creates a new [GetVolumeGroupEncryption].
  /// [currentVersionedKeyExpirationTimestamp] The timestamp of the expiration time for the current version of the Customer Managed Key.
  /// [currentVersionedKeyId] The ID of the current versioned Key Vault Key in use.
  /// [keyVaultKeyId] The Key Vault Key URI for Customer Managed Key encryption, which can be either a full URI or a versionless URI.
  /// [lastKeyRotationTimestamp] The timestamp of the last rotation of the Key Vault Key.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity used by this Elastic SAN Volume Group.
  GetVolumeGroupEncryption({
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
      currentVersionedKeyExpirationTimestamp: map['currentVersionedKeyExpirationTimestamp'] as String,
      currentVersionedKeyId: map['currentVersionedKeyId'] as String,
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      lastKeyRotationTimestamp: map['lastKeyRotationTimestamp'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] as String,
    );
  }
}

