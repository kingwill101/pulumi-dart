// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKMSSecret.
class GetKMSSecretResult {
  final String? additionalAuthenticatedData;
  final String? ciphertext;
  final String? cryptoKey;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Contains the result of decrypting the provided ciphertext.
  final String? plaintext;

  /// Creates a new [GetKMSSecretResult].
  /// [additionalAuthenticatedData] Optional.
  /// [ciphertext] Optional.
  /// [cryptoKey] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [plaintext] Contains the result of decrypting the provided ciphertext.
  const GetKMSSecretResult({
    this.additionalAuthenticatedData,
    this.ciphertext,
    this.cryptoKey,
    this.id,
    this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthenticatedData': ?additionalAuthenticatedData,
      'ciphertext': ?ciphertext,
      'cryptoKey': ?cryptoKey,
      'id': ?id,
      'plaintext': ?plaintext,
    };
  }

  factory GetKMSSecretResult.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretResult(
      additionalAuthenticatedData: (() { final guardedValue = map['additionalAuthenticatedData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ciphertext: (() { final guardedValue = map['ciphertext']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cryptoKey: (() { final guardedValue = map['cryptoKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plaintext: (() { final guardedValue = map['plaintext']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
