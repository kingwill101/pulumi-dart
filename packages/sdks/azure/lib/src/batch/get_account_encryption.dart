// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountEncryption {
  /// The full URL path of the Key Vault Key used to encrypt data for this Batch account.
  final pulumi.Input<String> keyVaultKeyId;

  /// Creates a new [GetAccountEncryption].
  /// [keyVaultKeyId] The full URL path of the Key Vault Key used to encrypt data for this Batch account.
  const GetAccountEncryption({
    required this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory GetAccountEncryption.fromMap(Map<String, dynamic> map) {
    return GetAccountEncryption(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
    );
  }
}

