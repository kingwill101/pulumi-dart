// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomOriginTrustStoresResult {
  /// The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  final pulumi.Input<String> certificate;
  /// When the certificate expires.
  final pulumi.Input<String> expiresOn;
  /// Identifier.
  final pulumi.Input<String> id;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String> issuer;
  /// The type of hash used for the certificate.
  final pulumi.Input<String> signature;
  /// Status of the zone's custom SSL.
  /// Available values: "initializing", "pending*deployment", "active", "pending*deletion", "deleted", "expired".
  final pulumi.Input<String> status;
  /// When the certificate was last modified.
  final pulumi.Input<String> updatedAt;
  /// When the certificate was uploaded to Cloudflare.
  final pulumi.Input<String> uploadedOn;

  /// Creates a new [GetCustomOriginTrustStoresResult].
  /// [certificate] The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  /// [expiresOn] When the certificate expires.
  /// [id] Identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the zone's custom SSL.
  /// [updatedAt] When the certificate was last modified.
  /// [uploadedOn] When the certificate was uploaded to Cloudflare.
  const GetCustomOriginTrustStoresResult({
    required this.certificate,
    required this.expiresOn,
    required this.id,
    required this.issuer,
    required this.signature,
    required this.status,
    required this.updatedAt,
    required this.uploadedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'expiresOn': expiresOn,
      'id': id,
      'issuer': issuer,
      'signature': signature,
      'status': status,
      'updatedAt': updatedAt,
      'uploadedOn': uploadedOn,
    };
  }

  factory GetCustomOriginTrustStoresResult.fromMap(Map<String, dynamic> map) {
    return GetCustomOriginTrustStoresResult(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      signature: pulumi.Input.fromValue(map['signature'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uploadedOn: pulumi.Input.fromValue(map['uploadedOn'] as String),
    );
  }
}
