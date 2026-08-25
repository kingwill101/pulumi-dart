// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountKey.
class GetAccountKeyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyAlgorithm;
  final String? name;
  /// The public key, base64 encoded
  final String? publicKey;
  final String? publicKeyType;

  /// Creates a new [GetAccountKeyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyAlgorithm] Optional.
  /// [name] Optional.
  /// [publicKey] The public key, base64 encoded
  /// [publicKeyType] Optional.
  const GetAccountKeyResult({
    this.id,
    this.keyAlgorithm,
    this.name,
    this.publicKey,
    this.publicKeyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'keyAlgorithm': ?keyAlgorithm,
      'name': ?name,
      'publicKey': ?publicKey,
      'publicKeyType': ?publicKeyType,
    };
  }

  factory GetAccountKeyResult.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyAlgorithm: (() { final guardedValue = map['keyAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeyType: (() { final guardedValue = map['publicKeyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
