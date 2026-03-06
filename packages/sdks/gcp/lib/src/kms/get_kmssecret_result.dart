// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKMSSecret.
class GetKMSSecretResult {
  final String? additionalAuthenticatedData;
  final String ciphertext;
  final String cryptoKey;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Contains the result of decrypting the provided ciphertext.
  final String plaintext;

  /// Creates a new [GetKMSSecretResult].
  /// [additionalAuthenticatedData] Optional.
  /// [ciphertext] Required.
  /// [cryptoKey] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [plaintext] Contains the result of decrypting the provided ciphertext.
  const GetKMSSecretResult({
    this.additionalAuthenticatedData,
    required this.ciphertext,
    required this.cryptoKey,
    required this.id,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthenticatedData': ?additionalAuthenticatedData,
      'ciphertext': ciphertext,
      'cryptoKey': cryptoKey,
      'id': id,
      'plaintext': plaintext,
    };
  }

  factory GetKMSSecretResult.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretResult(
      additionalAuthenticatedData: (() { final guardedValue = map['additionalAuthenticatedData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ciphertext: map['ciphertext'] as String,
      cryptoKey: map['cryptoKey'] as String,
      id: map['id'] as String,
      plaintext: map['plaintext'] as String,
    );
  }
}

