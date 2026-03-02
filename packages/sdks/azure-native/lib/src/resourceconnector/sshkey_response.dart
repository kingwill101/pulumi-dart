// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Appliance SSHKey definition.
class SSHKeyResponse {
  /// Certificate associated with the public key if the key is signed.
  final pulumi.Input<String> certificate;
  /// Certificate creation timestamp (Unix).
  final pulumi.Input<double> creationTimeStamp;
  /// Certificate expiration timestamp (Unix).
  final pulumi.Input<double> expirationTimeStamp;
  /// Private Key.
  final pulumi.Input<String> privateKey;
  /// Public Key.
  final pulumi.Input<String> publicKey;

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
      certificate: (map['certificate'] as String).input(),
      creationTimeStamp: (map['creationTimeStamp'] as double).input(),
      expirationTimeStamp: (map['expirationTimeStamp'] as double).input(),
      privateKey: (map['privateKey'] as String).input(),
      publicKey: (map['publicKey'] as String).input(),
    );
  }
}

