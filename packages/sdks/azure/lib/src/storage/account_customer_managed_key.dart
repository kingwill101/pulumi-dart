// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountCustomerManagedKey {
  /// The ID of the Key Vault Key, supplying a version-less key ID will enable auto-rotation of this key.
  final pulumi.Input<String>? keyVaultKeyId;
  final pulumi.Input<String>? managedHsmKeyId;
  /// The ID of a user assigned identity.
  ///
  /// &gt; **Note:** `customerManagedKey` can only be set when the `accountKind` is set to `StorageV2` or `accountTier` set to `Premium`, and the identity type is `UserAssigned`.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [AccountCustomerManagedKey].
  /// [keyVaultKeyId] The ID of the Key Vault Key, supplying a version-less key ID will enable auto-rotation of this key.
  /// [managedHsmKeyId] Optional.
  /// [userAssignedIdentityId] The ID of a user assigned identity.
  const AccountCustomerManagedKey({
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
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedHsmKeyId: (() { final guardedValue = map['managedHsmKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityId: pulumi.Input.fromValue(map['userAssignedIdentityId'] as String),
    );
  }
}
