// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_encrypted_value_get_encrypted_value_args_doc}
/// Arguments for getEncryptedValue.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_encrypted_value_get_encrypted_value_args_doc}
class GetEncryptedValueArgs {
  /// The Algorithm which should be used to Decrypt/Encrypt this Value. Possible values are `RSA1_5`, `RSA-OAEP` and `RSA-OAEP-256`.
  final pulumi.Input<String> algorithm;

  /// The Base64 URL Encoded Encrypted Data which should be decrypted into `plain_text_value`.
  final pulumi.Input<String>? encryptedData;

  /// The ID of the Key Vault Key which should be used to Decrypt/Encrypt this Value.
  final pulumi.Input<String> keyVaultKeyId;

  /// The plain-text value which should be Encrypted into `encrypted_data`.
  ///
  /// &gt; **Note:** One of either `encrypted_data` or `plain_text_value` must be specified and is used to populate the encrypted/decrypted value for the other field.
  final pulumi.Input<String>? plainTextValue;

  /// Creates a new [GetEncryptedValueArgs].
  /// [algorithm] The Algorithm which should be used to Decrypt/Encrypt this Value. Possible values are `RSA1_5`, `RSA-OAEP` and `RSA-OAEP-256`.
  /// [encryptedData] The Base64 URL Encoded Encrypted Data which should be decrypted into `plain_text_value`.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Decrypt/Encrypt this Value.
  /// [plainTextValue] The plain-text value which should be Encrypted into `encrypted_data`.
  GetEncryptedValueArgs({
    required this.algorithm,
    this.encryptedData,
    required this.keyVaultKeyId,
    this.plainTextValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'encryptedData': ?encryptedData,
      'keyVaultKeyId': keyVaultKeyId,
      'plainTextValue': ?plainTextValue,
    };
  }

  factory GetEncryptedValueArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptedValueArgs(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      encryptedData: (() {
        final guardedValue = map['encryptedData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      plainTextValue: (() {
        final guardedValue = map['plainTextValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
