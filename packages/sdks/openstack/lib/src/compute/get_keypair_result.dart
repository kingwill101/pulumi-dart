// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKeypair.
class GetKeypairResult {
  /// The fingerprint of the OpenSSH key.
  final String fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String name;
  /// The OpenSSH-formatted public key of the keypair.
  final String publicKey;
  /// See Argument Reference above.
  final String region;
  /// See Argument Reference above.
  final String userId;

  /// Creates a new [GetKeypairResult].
  /// [fingerprint] The fingerprint of the OpenSSH key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] See Argument Reference above.
  /// [publicKey] The OpenSSH-formatted public key of the keypair.
  /// [region] See Argument Reference above.
  /// [userId] See Argument Reference above.
  const GetKeypairResult({
    required this.fingerprint,
    required this.id,
    required this.name,
    required this.publicKey,
    required this.region,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint,
      'id': id,
      'name': name,
      'publicKey': publicKey,
      'region': region,
      'userId': userId,
    };
  }

  factory GetKeypairResult.fromMap(Map<String, dynamic> map) {
    return GetKeypairResult(
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      publicKey: map['publicKey'] as String,
      region: map['region'] as String,
      userId: map['userId'] as String,
    );
  }
}

