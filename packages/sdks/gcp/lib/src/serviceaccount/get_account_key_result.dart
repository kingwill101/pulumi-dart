// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountKey.
class GetAccountKeyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyAlgorithm;
  final String name;
  /// The public key, base64 encoded
  final String publicKey;
  final String? publicKeyType;

  /// Creates a new [GetAccountKeyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyAlgorithm] Required.
  /// [name] Required.
  /// [publicKey] The public key, base64 encoded
  /// [publicKeyType] Optional.
  GetAccountKeyResult({
    required this.id,
    required this.keyAlgorithm,
    required this.name,
    required this.publicKey,
    this.publicKeyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyAlgorithm': keyAlgorithm,
      'name': name,
      'publicKey': publicKey,
      'publicKeyType': ?publicKeyType,
    };
  }

  factory GetAccountKeyResult.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyResult(
      id: map['id'] as String,
      keyAlgorithm: map['keyAlgorithm'] as String,
      name: map['name'] as String,
      publicKey: map['publicKey'] as String,
      publicKeyType: map['publicKeyType'] == null ? null : map['publicKeyType']! as String,
    );
  }
}

