// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomOriginTrustStore resources.
class CustomOriginTrustStoreState {
  /// The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  final pulumi.Input<String?>? certificate;
  /// When the certificate expires.
  final pulumi.Input<String?>? expiresOn;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String?>? issuer;
  /// The type of hash used for the certificate.
  final pulumi.Input<String?>? signature;
  /// Status of the zone's custom SSL.
  /// Available values: "initializing", "pending*deployment", "active", "pending*deletion", "deleted", "expired".
  final pulumi.Input<String?>? status;
  /// When the certificate was last modified.
  final pulumi.Input<String?>? updatedAt;
  /// When the certificate was uploaded to Cloudflare.
  final pulumi.Input<String?>? uploadedOn;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomOriginTrustStoreState].
  /// [certificate] The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  /// [expiresOn] When the certificate expires.
  /// [issuer] The certificate authority that issued the certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the zone's custom SSL.
  /// [updatedAt] When the certificate was last modified.
  /// [uploadedOn] When the certificate was uploaded to Cloudflare.
  /// [zoneId] Identifier.
  const CustomOriginTrustStoreState({
    this.certificate,
    this.expiresOn,
    this.issuer,
    this.signature,
    this.status,
    this.updatedAt,
    this.uploadedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'expiresOn': ?expiresOn,
      'issuer': ?issuer,
      'signature': ?signature,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'uploadedOn': ?uploadedOn,
      'zoneId': ?zoneId,
    };
  }

  factory CustomOriginTrustStoreState.fromMap(Map<String, dynamic> map) {
    return CustomOriginTrustStoreState(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
