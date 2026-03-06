// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmssecret_ciphertext_get_kmssecret_ciphertext_args_doc}
/// Arguments for getKMSSecretCiphertext.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmssecret_ciphertext_get_kmssecret_ciphertext_args_doc}
class GetKMSSecretCiphertextArgs {
  /// The id of the CryptoKey that will be used to
  /// encrypt the provided plaintext. This is represented by the format
  /// `{projectId}/{location}/{keyRingName}/{cryptoKeyName}`.
  final pulumi.Input<String> cryptoKey;
  /// The plaintext to be encrypted
  final pulumi.Input<String> plaintext;

  /// Creates a new [GetKMSSecretCiphertextArgs].
  /// [cryptoKey] The id of the CryptoKey that will be used to
  /// [plaintext] The plaintext to be encrypted
  const GetKMSSecretCiphertextArgs({
    required this.cryptoKey,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': cryptoKey,
      'plaintext': plaintext,
    };
  }

  factory GetKMSSecretCiphertextArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretCiphertextArgs(
      cryptoKey: pulumi.Input.fromValue(map['cryptoKey'] as String),
      plaintext: pulumi.Input.fromValue(map['plaintext'] as String),
    );
  }
}

