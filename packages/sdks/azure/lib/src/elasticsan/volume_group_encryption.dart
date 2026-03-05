// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeGroupEncryption {
  /// The timestamp of the expiration time for the current version of the customer managed key.
  final pulumi.Input<String>? currentVersionedKeyExpirationTimestamp;
  /// The ID of the current versioned Key Vault Key in use.
  final pulumi.Input<String>? currentVersionedKeyId;
  /// The Key Vault key URI for Customer Managed Key encryption, which can be either a full URI or a versionless URI.
  final pulumi.Input<String> keyVaultKeyId;
  /// The timestamp of the last rotation of the Key Vault Key.
  final pulumi.Input<String>? lastKeyRotationTimestamp;
  /// The ID of the User Assigned Identity used by this Elastic SAN Volume Group.
  final pulumi.Input<String>? userAssignedIdentityId;

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
      currentVersionedKeyExpirationTimestamp: (() { final guardedValue = map['currentVersionedKeyExpirationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentVersionedKeyId: (() { final guardedValue = map['currentVersionedKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      lastKeyRotationTimestamp: (() { final guardedValue = map['lastKeyRotationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

