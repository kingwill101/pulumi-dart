// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCryptoKeyVersionsVersionPublicKey {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final pulumi.Input<String> algorithm;

  /// The public key, encoded in PEM format. For more information, see the RFC 7468 sections for General Considerations and Textual Encoding of Subject Public Key Info.
  final pulumi.Input<String> pem;

  /// Creates a new [GetCryptoKeyVersionsVersionPublicKey].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [pem] The public key, encoded in PEM format. For more information, see the RFC 7468 sections for General Considerations and Textual Encoding of Subject Public Key Info.
  GetCryptoKeyVersionsVersionPublicKey({
    required this.algorithm,
    required this.pem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'algorithm': algorithm, 'pem': pem};
  }

  factory GetCryptoKeyVersionsVersionPublicKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCryptoKeyVersionsVersionPublicKey(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      pem: pulumi.Input.fromValue(map['pem'] as String),
    );
  }
}
