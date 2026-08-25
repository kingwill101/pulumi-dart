// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKMSSecretCiphertext.
class GetKMSSecretCiphertextResult {
  /// Contains the result of encrypting the provided plaintext, encoded in base64.
  final String? ciphertext;
  final String? cryptoKey;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? plaintext;

  /// Creates a new [GetKMSSecretCiphertextResult].
  /// [ciphertext] Contains the result of encrypting the provided plaintext, encoded in base64.
  /// [cryptoKey] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [plaintext] Optional.
  const GetKMSSecretCiphertextResult({
    this.ciphertext,
    this.cryptoKey,
    this.id,
    this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphertext': ?ciphertext,
      'cryptoKey': ?cryptoKey,
      'id': ?id,
      'plaintext': ?plaintext,
    };
  }

  factory GetKMSSecretCiphertextResult.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretCiphertextResult(
      ciphertext: (() { final guardedValue = map['ciphertext']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cryptoKey: (() { final guardedValue = map['cryptoKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plaintext: (() { final guardedValue = map['plaintext']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
