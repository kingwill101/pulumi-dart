// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKMSSecretAsymmetric.
class GetKMSSecretAsymmetricResult {
  final String ciphertext;

  /// Contains the crc32 checksum of the provided ciphertext.
  final String? crc32;
  final String cryptoKeyVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Contains the result of decrypting the provided ciphertext.
  final String plaintext;

  /// Creates a new [GetKMSSecretAsymmetricResult].
  /// [ciphertext] Required.
  /// [crc32] Contains the crc32 checksum of the provided ciphertext.
  /// [cryptoKeyVersion] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [plaintext] Contains the result of decrypting the provided ciphertext.
  GetKMSSecretAsymmetricResult({
    required this.ciphertext,
    this.crc32,
    required this.cryptoKeyVersion,
    required this.id,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphertext': ciphertext,
      'crc32': ?crc32,
      'cryptoKeyVersion': cryptoKeyVersion,
      'id': id,
      'plaintext': plaintext,
    };
  }

  factory GetKMSSecretAsymmetricResult.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretAsymmetricResult(
      ciphertext: map['ciphertext'] as String,
      crc32: (() {
        final guardedValue = map['crc32'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      cryptoKeyVersion: map['cryptoKeyVersion'] as String,
      id: map['id'] as String,
      plaintext: map['plaintext'] as String,
    );
  }
}
