// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountCustomerManagedKey {
  /// The ID of the Key Vault Key, supplying a version-less key ID will enable auto-rotation of this key.
  final pulumi.Input<String>? keyVaultKeyId;
  final pulumi.Input<String>? managedHsmKeyId;
  /// The ID of a user assigned identity.
  ///
  /// > **Note:** `customer_managed_key` can only be set when the `account_kind` is set to `StorageV2` or `account_tier` set to `Premium`, and the identity type is `UserAssigned`.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [AccountCustomerManagedKey].
  /// [keyVaultKeyId] The ID of the Key Vault Key, supplying a version-less key ID will enable auto-rotation of this key.
  /// [managedHsmKeyId] Optional.
  /// [userAssignedIdentityId] The ID of a user assigned identity.
  AccountCustomerManagedKey({
    this.keyVaultKeyId,
    this.managedHsmKeyId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': ?keyVaultKeyId,
      'managedHsmKeyId': ?managedHsmKeyId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory AccountCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return AccountCustomerManagedKey(
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : (map['managedHsmKeyId'] as String).input(),
      userAssignedIdentityId: (map['userAssignedIdentityId'] as String).input(),
    );
  }
}

