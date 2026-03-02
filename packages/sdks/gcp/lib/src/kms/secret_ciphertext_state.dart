// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecretCiphertext resources.
class SecretCiphertextState {
  /// The additional authenticated data used for integrity checks during encryption and decryption.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? additionalAuthenticatedData;
  /// Contains the result of encrypting the provided plaintext, encoded in base64.
  final pulumi.Input<String>? ciphertext;
  /// The full name of the CryptoKey that will be used to encrypt the provided plaintext.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'`
  final pulumi.Input<String>? cryptoKey;
  /// The plaintext to be encrypted.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? plaintext;

  /// Creates a new [SecretCiphertextState].
  /// [additionalAuthenticatedData] The additional authenticated data used for integrity checks during encryption and decryption.
  /// [ciphertext] Contains the result of encrypting the provided plaintext, encoded in base64.
  /// [cryptoKey] The full name of the CryptoKey that will be used to encrypt the provided plaintext.
  /// [plaintext] The plaintext to be encrypted.
  SecretCiphertextState({
    this.additionalAuthenticatedData,
    this.ciphertext,
    this.cryptoKey,
    this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthenticatedData': ?additionalAuthenticatedData,
      'ciphertext': ?ciphertext,
      'cryptoKey': ?cryptoKey,
      'plaintext': ?plaintext,
    };
  }

  factory SecretCiphertextState.fromMap(Map<String, dynamic> map) {
    return SecretCiphertextState(
      additionalAuthenticatedData: map['additionalAuthenticatedData'] == null ? null : (map['additionalAuthenticatedData'] as String).input(),
      ciphertext: map['ciphertext'] == null ? null : (map['ciphertext'] as String).input(),
      cryptoKey: map['cryptoKey'] == null ? null : (map['cryptoKey'] as String).input(),
      plaintext: map['plaintext'] == null ? null : (map['plaintext'] as String).input(),
    );
  }
}

