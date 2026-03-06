// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerCustomerManagedKey {
  /// The Key Vault Key Id that will be used to encrypt the Fluid Relay Server.
  final pulumi.Input<String> keyVaultKeyId;
  /// The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [ServerCustomerManagedKey].
  /// [keyVaultKeyId] The Key Vault Key Id that will be used to encrypt the Fluid Relay Server.
  /// [userAssignedIdentityId] The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption.
  const ServerCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory ServerCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return ServerCustomerManagedKey(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      userAssignedIdentityId: pulumi.Input.fromValue(map['userAssignedIdentityId'] as String),
    );
  }
}

