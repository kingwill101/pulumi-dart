// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountCustomerManagedKey {
  /// The client ID of the managed identity associated with the storage resource.
  final pulumi.Input<String> identityClientId;
  /// The ID of the Key Vault Key which is used to encrypt the data in this Cognitive Services Account.
  final pulumi.Input<String> keyVaultKeyId;

  /// Creates a new [GetAccountCustomerManagedKey].
  /// [identityClientId] The client ID of the managed identity associated with the storage resource.
  /// [keyVaultKeyId] The ID of the Key Vault Key which is used to encrypt the data in this Cognitive Services Account.
  const GetAccountCustomerManagedKey({
    required this.identityClientId,
    required this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': identityClientId,
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory GetAccountCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return GetAccountCustomerManagedKey(
      identityClientId: pulumi.Input.fromValue(map['identityClientId'] as String),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
    );
  }
}

