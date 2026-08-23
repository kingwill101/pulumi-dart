// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomerManagedKey {
  /// The ID of the key vault key used for encryption.
  final pulumi.Input<String> keyVaultKeyId;
  /// The ID of the User Assigned Identity that has access to the Key Vault Key.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [GetCustomerManagedKey].
  /// [keyVaultKeyId] The ID of the key vault key used for encryption.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity that has access to the Key Vault Key.
  const GetCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory GetCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return GetCustomerManagedKey(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      userAssignedIdentityId: pulumi.Input.fromValue(map['userAssignedIdentityId'] as String),
    );
  }
}
