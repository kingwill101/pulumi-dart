// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_secret_ciphertext_secret_ciphertext_args_doc}
/// The set of arguments for SecretCiphertext.
/// {@endtemplate}
/// {@macro pulumi_kms_secret_ciphertext_secret_ciphertext_args_doc}
class SecretCiphertextArgs {
  /// The additional authenticated data used for integrity checks during encryption and decryption.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? additionalAuthenticatedData;
  /// The full name of the CryptoKey that will be used to encrypt the provided plaintext.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'`
  final pulumi.Input<String> cryptoKey;
  /// The plaintext to be encrypted.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> plaintext;

  /// Creates a new [SecretCiphertextArgs].
  /// [additionalAuthenticatedData] The additional authenticated data used for integrity checks during encryption and decryption.
  /// [cryptoKey] The full name of the CryptoKey that will be used to encrypt the provided plaintext.
  /// [plaintext] The plaintext to be encrypted.
  SecretCiphertextArgs({
    pulumi.Output<String>? additionalAuthenticatedData,
    required pulumi.Output<String> cryptoKey,
    required pulumi.Output<String> plaintext,
  }) :
      additionalAuthenticatedData = pulumi.Input.asOptionalInput<String>(additionalAuthenticatedData),
      cryptoKey = pulumi.Input.asInput<String>(cryptoKey),
      plaintext = pulumi.Input.asInput<String>(plaintext);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthenticatedData': ?additionalAuthenticatedData,
      'cryptoKey': cryptoKey,
      'plaintext': plaintext,
    };
  }

  factory SecretCiphertextArgs.fromMap(Map<String, dynamic> map) {
    return SecretCiphertextArgs(
      additionalAuthenticatedData: map['additionalAuthenticatedData'] == null ? null : pulumi.Output.create<String>(map['additionalAuthenticatedData'] as String),
      cryptoKey: pulumi.Output.create<String>(map['cryptoKey'] as String),
      plaintext: pulumi.Output.create<String>(map['plaintext'] as String),
    );
  }
}

