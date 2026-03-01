// ignore_for_file: unused_element, unnecessary_cast


class GetSshKeysSshKey {
  /// The fingerprint of the public key of the ssh key.
  final String fingerprint;
  /// The ID of the ssh key.
  final int id;
  /// The name of the ssh key.
  final String name;
  /// The public key of the ssh key.
  final String publicKey;

  /// Creates a new [GetSshKeysSshKey].
  /// [fingerprint] The fingerprint of the public key of the ssh key.
  /// [id] The ID of the ssh key.
  /// [name] The name of the ssh key.
  /// [publicKey] The public key of the ssh key.
  GetSshKeysSshKey({
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

  factory GetSshKeysSshKey.fromMap(Map<String, dynamic> map) {
    return GetSshKeysSshKey(
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      publicKey: map['publicKey'] as String,
    );
  }
}

