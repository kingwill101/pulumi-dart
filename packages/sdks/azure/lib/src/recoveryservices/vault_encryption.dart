// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VaultEncryption {
  /// Enabling/Disabling the Double Encryption state.
  final pulumi.Input<bool> infrastructureEncryptionEnabled;
  /// The Key Vault key id used to encrypt this vault. Key managed by Vault Managed Hardware Security Module is also supported.
  final pulumi.Input<String> keyId;
  /// Indicate that system assigned identity should be used or not. Defaults to `true`. Must be set to `false` when `userAssignedIdentityId` is set.
  ///
  /// &gt; **Note:** `useSystemAssignedIdentity` only be able to set to `false` for **new** vaults. Any vaults containing existing items registered or attempted to be registered to it are not supported. Details can be found in [the document](https://learn.microsoft.com/en-us/azure/backup/encryption-at-rest-with-cmk?tabs=portal#before-you-start)
  ///
  /// &gt; **Note:** Once `infrastructureEncryptionEnabled` has been set it's not possible to change it.
  final pulumi.Input<bool>? useSystemAssignedIdentity;
  /// Specifies the user assigned identity ID to be used.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [VaultEncryption].
  /// [infrastructureEncryptionEnabled] Enabling/Disabling the Double Encryption state.
  /// [keyId] The Key Vault key id used to encrypt this vault. Key managed by Vault Managed Hardware Security Module is also supported.
  /// [useSystemAssignedIdentity] Indicate that system assigned identity should be used or not. Defaults to `true`. Must be set to `false` when `userAssignedIdentityId` is set.
  /// [userAssignedIdentityId] Specifies the user assigned identity ID to be used.
  const VaultEncryption({
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
      infrastructureEncryptionEnabled: pulumi.Input.fromValue(map['infrastructureEncryptionEnabled'] as bool),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      useSystemAssignedIdentity: (() { final guardedValue = map['useSystemAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
