// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessShortLivedCertificatesResult {
  /// The Application Audience (AUD) tag. Identifies the application associated with the CA.
  final pulumi.Input<String> aud;
  /// The ID of the CA.
  final pulumi.Input<String> id;
  /// The public key to add to your SSH server configuration.
  final pulumi.Input<String> publicKey;

  /// Creates a new [GetZeroTrustAccessShortLivedCertificatesResult].
  /// [aud] The Application Audience (AUD) tag. Identifies the application associated with the CA.
  /// [id] The ID of the CA.
  /// [publicKey] The public key to add to your SSH server configuration.
  const GetZeroTrustAccessShortLivedCertificatesResult({
    required this.aud,
    required this.id,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aud': aud,
      'id': id,
      'publicKey': publicKey,
    };
  }

  factory GetZeroTrustAccessShortLivedCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessShortLivedCertificatesResult(
      aud: pulumi.Input.fromValue(map['aud'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
    );
  }
}
