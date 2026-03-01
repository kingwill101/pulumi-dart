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
    pulumi.Output<String>? additionalAuthenticatedData,
    pulumi.Output<String>? ciphertext,
    pulumi.Output<String>? cryptoKey,
    pulumi.Output<String>? plaintext,
  }) :
      additionalAuthenticatedData = pulumi.Input.asOptionalInput<String>(additionalAuthenticatedData),
      ciphertext = pulumi.Input.asOptionalInput<String>(ciphertext),
      cryptoKey = pulumi.Input.asOptionalInput<String>(cryptoKey),
      plaintext = pulumi.Input.asOptionalInput<String>(plaintext);

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
      additionalAuthenticatedData: map['additionalAuthenticatedData'] == null ? null : pulumi.Output.create<String>(map['additionalAuthenticatedData'] as String),
      ciphertext: map['ciphertext'] == null ? null : pulumi.Output.create<String>(map['ciphertext'] as String),
      cryptoKey: map['cryptoKey'] == null ? null : pulumi.Output.create<String>(map['cryptoKey'] as String),
      plaintext: map['plaintext'] == null ? null : pulumi.Output.create<String>(map['plaintext'] as String),
    );
  }
}

