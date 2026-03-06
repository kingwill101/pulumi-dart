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
  const SecretCiphertextState({
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
      additionalAuthenticatedData: (() { final guardedValue = map['additionalAuthenticatedData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ciphertext: (() { final guardedValue = map['ciphertext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cryptoKey: (() { final guardedValue = map['cryptoKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plaintext: (() { final guardedValue = map['plaintext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

