// ignore_for_file: unused_element, unnecessary_cast


class VolumeGroupEncryption {
  /// The timestamp of the expiration time for the current version of the customer managed key.
  final String? currentVersionedKeyExpirationTimestamp;
  /// The ID of the current versioned Key Vault Key in use.
  final String? currentVersionedKeyId;
  /// The Key Vault key URI for Customer Managed Key encryption, which can be either a full URI or a versionless URI.
  final String keyVaultKeyId;
  /// The timestamp of the last rotation of the Key Vault Key.
  final String? lastKeyRotationTimestamp;
  /// The ID of the User Assigned Identity used by this Elastic SAN Volume Group.
  final String? userAssignedIdentityId;

  /// Creates a new [VolumeGroupEncryption].
  /// [currentVersionedKeyExpirationTimestamp] The timestamp of the expiration time for the current version of the customer managed key.
  /// [currentVersionedKeyId] The ID of the current versioned Key Vault Key in use.
  /// [keyVaultKeyId] The Key Vault key URI for Customer Managed Key encryption, which can be either a full URI or a versionless URI.
  /// [lastKeyRotationTimestamp] The timestamp of the last rotation of the Key Vault Key.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity used by this Elastic SAN Volume Group.
  VolumeGroupEncryption({
    this.currentVersionedKeyExpirationTimestamp,
    this.currentVersionedKeyId,
    required this.keyVaultKeyId,
    this.lastKeyRotationTimestamp,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersionedKeyExpirationTimestamp': ?currentVersionedKeyExpirationTimestamp,
      'currentVersionedKeyId': ?currentVersionedKeyId,
      'keyVaultKeyId': keyVaultKeyId,
      'lastKeyRotationTimestamp': ?lastKeyRotationTimestamp,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory VolumeGroupEncryption.fromMap(Map<String, dynamic> map) {
    return VolumeGroupEncryption(
      currentVersionedKeyExpirationTimestamp: map['currentVersionedKeyExpirationTimestamp'] == null ? null : map['currentVersionedKeyExpirationTimestamp'] as String,
      currentVersionedKeyId: map['currentVersionedKeyId'] == null ? null : map['currentVersionedKeyId'] as String,
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      lastKeyRotationTimestamp: map['lastKeyRotationTimestamp'] == null ? null : map['lastKeyRotationTimestamp'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

