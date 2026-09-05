// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountCustomerManagedKey {
  /// The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
  ///
  /// &gt; **Note:** When `projectManagementEnabled` is set to `true`, removing this block forces a new resource to be created.
  final pulumi.Input<String?>? identityClientId;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
  final pulumi.Input<String> keyVaultKeyId;

  /// Creates a new [AccountCustomerManagedKey].
  /// [identityClientId] The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
  const AccountCustomerManagedKey({
    this.identityClientId,
    required this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory AccountCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return AccountCustomerManagedKey(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
    );
  }
}
