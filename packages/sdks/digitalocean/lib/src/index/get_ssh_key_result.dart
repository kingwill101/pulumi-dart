// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSshKey.
class GetSshKeyResult {
  /// The fingerprint of the public key of the ssh key.
  final String fingerprint;
  /// The ID of the ssh key.
  final int id;
  final String name;
  /// The public key of the ssh key.
  final String publicKey;

  /// Creates a new [GetSshKeyResult].
  /// [fingerprint] The fingerprint of the public key of the ssh key.
  /// [id] The ID of the ssh key.
  /// [name] Required.
  /// [publicKey] The public key of the ssh key.
  const GetSshKeyResult({
    required this.fingerprint,
    required this.id,
    required this.name,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint,
      'id': id,
      'name': name,
      'publicKey': publicKey,
    };
  }

  factory GetSshKeyResult.fromMap(Map<String, dynamic> map) {
    return GetSshKeyResult(
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      publicKey: map['publicKey'] as String,
    );
  }
}
