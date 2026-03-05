// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedRedisCustomerManagedKey {
  /// The ID of the key vault key used for encryption. For example: `https://example-vault-name.vault.azure.net/keys/example-key-name/a1b2c3d4`.
  final pulumi.Input<String> keyVaultKeyId;
  /// The ID of the User Assigned Identity that has access to the Key Vault Key.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [ManagedRedisCustomerManagedKey].
  /// [keyVaultKeyId] The ID of the key vault key used for encryption. For example: `https://example-vault-name.vault.azure.net/keys/example-key-name/a1b2c3d4`.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity that has access to the Key Vault Key.
  ManagedRedisCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory ManagedRedisCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return ManagedRedisCustomerManagedKey(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      userAssignedIdentityId: pulumi.Input.fromValue(map['userAssignedIdentityId'] as String),
    );
  }
}

