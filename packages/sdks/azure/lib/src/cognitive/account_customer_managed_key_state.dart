// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountCustomerManagedKey resources.
class AccountCustomerManagedKeyState {
  /// The ID of the Cognitive Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cognitiveAccountId;
  /// The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
  final pulumi.Input<String>? identityClientId;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
  final pulumi.Input<String>? keyVaultKeyId;

  /// Creates a new [AccountCustomerManagedKeyState].
  /// [cognitiveAccountId] The ID of the Cognitive Account. Changing this forces a new resource to be created.
  /// [identityClientId] The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
  AccountCustomerManagedKeyState({
    this.cognitiveAccountId,
    this.identityClientId,
    this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': ?cognitiveAccountId,
      'identityClientId': ?identityClientId,
      'keyVaultKeyId': ?keyVaultKeyId,
    };
  }

  factory AccountCustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return AccountCustomerManagedKeyState(
      cognitiveAccountId: map['cognitiveAccountId'] == null ? null : (map['cognitiveAccountId'] as String).input(),
      identityClientId: map['identityClientId'] == null ? null : (map['identityClientId'] as String).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
    );
  }
}

