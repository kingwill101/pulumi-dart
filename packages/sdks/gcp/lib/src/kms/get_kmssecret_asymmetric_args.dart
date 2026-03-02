// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmssecret_asymmetric_get_kmssecret_asymmetric_args_doc}
/// Arguments for getKMSSecretAsymmetric.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmssecret_asymmetric_get_kmssecret_asymmetric_args_doc}
class GetKMSSecretAsymmetricArgs {
  /// The ciphertext to be decrypted, encoded in base64
  final pulumi.Input<String> ciphertext;
  /// The crc32 checksum of the `ciphertext` in hexadecimal notation. If not specified, it will be computed.
  final pulumi.Input<String>? crc32;
  /// The id of the CryptoKey version that will be used to
  /// decrypt the provided ciphertext. This is represented by the format
  /// `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}/cryptoKeyVersions/{version}`.
  final pulumi.Input<String> cryptoKeyVersion;

  /// Creates a new [GetKMSSecretAsymmetricArgs].
  /// [ciphertext] The ciphertext to be decrypted, encoded in base64
  /// [crc32] The crc32 checksum of the `ciphertext` in hexadecimal notation. If not specified, it will be computed.
  /// [cryptoKeyVersion] The id of the CryptoKey version that will be used to
  GetKMSSecretAsymmetricArgs({
    required this.ciphertext,
    this.crc32,
    required this.cryptoKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphertext': ciphertext,
      'crc32': ?crc32,
      'cryptoKeyVersion': cryptoKeyVersion,
    };
  }

  factory GetKMSSecretAsymmetricArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretAsymmetricArgs(
      ciphertext: (map['ciphertext'] as String).input(),
      crc32: map['crc32'] == null ? null : (map['crc32'] as String).input(),
      cryptoKeyVersion: (map['cryptoKeyVersion'] as String).input(),
    );
  }
}

