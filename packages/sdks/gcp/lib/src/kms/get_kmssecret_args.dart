// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmssecret_get_kmssecret_args_doc}
/// Arguments for getKMSSecret.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmssecret_get_kmssecret_args_doc}
class GetKMSSecretArgs {
  /// The [additional authenticated data](https://cloud.google.com/kms/docs/additional-authenticated-data) used for integrity checks during encryption and decryption.
  final pulumi.Input<String>? additionalAuthenticatedData;
  /// The ciphertext to be decrypted, encoded in base64
  final pulumi.Input<String> ciphertext;
  /// The id of the CryptoKey that will be used to
  /// decrypt the provided ciphertext. This is represented by the format
  /// `{projectId}/{location}/{keyRingName}/{cryptoKeyName}`.
  final pulumi.Input<String> cryptoKey;

  /// Creates a new [GetKMSSecretArgs].
  /// [additionalAuthenticatedData] The [additional authenticated data](https://cloud.google.com/kms/docs/additional-authenticated-data) used for integrity checks during encryption and decryption.
  /// [ciphertext] The ciphertext to be decrypted, encoded in base64
  /// [cryptoKey] The id of the CryptoKey that will be used to
  GetKMSSecretArgs({
    this.additionalAuthenticatedData,
    required this.ciphertext,
    required this.cryptoKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthenticatedData': ?additionalAuthenticatedData,
      'ciphertext': ciphertext,
      'cryptoKey': cryptoKey,
    };
  }

  factory GetKMSSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretArgs(
      additionalAuthenticatedData: map['additionalAuthenticatedData'] == null ? null : (map['additionalAuthenticatedData'] as String).input(),
      ciphertext: (map['ciphertext'] as String).input(),
      cryptoKey: (map['cryptoKey'] as String).input(),
    );
  }
}

