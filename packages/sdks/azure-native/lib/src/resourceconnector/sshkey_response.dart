// ignore_for_file: unused_element, unnecessary_cast


/// Appliance SSHKey definition.
class SSHKeyResponse {
  /// Certificate associated with the public key if the key is signed.
  final String certificate;
  /// Certificate creation timestamp (Unix).
  final double creationTimeStamp;
  /// Certificate expiration timestamp (Unix).
  final double expirationTimeStamp;
  /// Private Key.
  final String privateKey;
  /// Public Key.
  final String publicKey;

  /// Creates a new [SSHKeyResponse].
  /// [certificate] Certificate associated with the public key if the key is signed.
  /// [creationTimeStamp] Certificate creation timestamp (Unix).
  /// [expirationTimeStamp] Certificate expiration timestamp (Unix).
  /// [privateKey] Private Key.
  /// [publicKey] Public Key.
  SSHKeyResponse({
    required this.certificate,
    required this.creationTimeStamp,
    required this.expirationTimeStamp,
    required this.privateKey,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'creationTimeStamp': creationTimeStamp,
      'expirationTimeStamp': expirationTimeStamp,
      'privateKey': privateKey,
      'publicKey': publicKey,
    };
  }

  factory SSHKeyResponse.fromMap(Map<String, dynamic> map) {
    return SSHKeyResponse(
      certificate: map['certificate'] as String,
      creationTimeStamp: map['creationTimeStamp'] as double,
      expirationTimeStamp: map['expirationTimeStamp'] as double,
      privateKey: map['privateKey'] as String,
      publicKey: map['publicKey'] as String,
    );
  }
}

