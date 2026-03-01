// ignore_for_file: unused_element, unnecessary_cast


class VaultEncryption {
  /// Enabling/Disabling the Double Encryption state.
  final bool infrastructureEncryptionEnabled;
  /// The Key Vault key id used to encrypt this vault. Key managed by Vault Managed Hardware Security Module is also supported.
  final String keyId;
  /// Indicate that system assigned identity should be used or not. Defaults to `true`. Must be set to `false` when `user_assigned_identity_id` is set.
  ///
  /// !> **Note:** `use_system_assigned_identity` only be able to set to `false` for **new** vaults. Any vaults containing existing items registered or attempted to be registered to it are not supported. Details can be found in [the document](https://learn.microsoft.com/en-us/azure/backup/encryption-at-rest-with-cmk?tabs=portal#before-you-start)
  ///
  /// !> **Note:** Once `infrastructure_encryption_enabled` has been set it's not possible to change it.
  final bool? useSystemAssignedIdentity;
  /// Specifies the user assigned identity ID to be used.
  final String? userAssignedIdentityId;

  /// Creates a new [VaultEncryption].
  /// [infrastructureEncryptionEnabled] Enabling/Disabling the Double Encryption state.
  /// [keyId] The Key Vault key id used to encrypt this vault. Key managed by Vault Managed Hardware Security Module is also supported.
  /// [useSystemAssignedIdentity] Indicate that system assigned identity should be used or not. Defaults to `true`. Must be set to `false` when `user_assigned_identity_id` is set.
  /// [userAssignedIdentityId] Specifies the user assigned identity ID to be used.
  VaultEncryption({
    required this.infrastructureEncryptionEnabled,
    required this.keyId,
    this.useSystemAssignedIdentity,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryptionEnabled': infrastructureEncryptionEnabled,
      'keyId': keyId,
      'useSystemAssignedIdentity': ?useSystemAssignedIdentity,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory VaultEncryption.fromMap(Map<String, dynamic> map) {
    return VaultEncryption(
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] as bool,
      keyId: map['keyId'] as String,
      useSystemAssignedIdentity: map['useSystemAssignedIdentity'] == null ? null : map['useSystemAssignedIdentity'] as bool,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

