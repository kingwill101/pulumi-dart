// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryEncryption {
  /// The client ID of the managed identity associated with the encryption key.
  final pulumi.Input<String> identityClientId;

  /// The ID of the Key Vault Key.
  final pulumi.Input<String> keyVaultKeyId;

  /// Creates a new [RegistryEncryption].
  /// [identityClientId] The client ID of the managed identity associated with the encryption key.
  /// [keyVaultKeyId] The ID of the Key Vault Key.
  RegistryEncryption({
    required this.identityClientId,
    required this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': identityClientId,
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory RegistryEncryption.fromMap(Map<String, dynamic> map) {
    return RegistryEncryption(
      identityClientId: pulumi.Input.fromValue(
        map['identityClientId'] as String,
      ),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
    );
  }
}
