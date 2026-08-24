// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate {
  /// Indicates whether this is the currently active certificate
  final pulumi.Input<bool> isCurrent;
  /// Certificate expiration date. Certificates are automatically rotated 30 days before expiration.
  final pulumi.Input<String> notAfter;
  /// PEM-encoded X.509 certificate containing the public key.
  /// Configure this certificate in your external SAML Identity Provider to enable encryption.
  final pulumi.Input<String> publicCertificate;
  /// Unique identifier for the certificate
  final pulumi.Input<String> uid;

  /// Creates a new [GetZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate].
  /// [isCurrent] Indicates whether this is the currently active certificate
  /// [notAfter] Certificate expiration date. Certificates are automatically rotated 30 days before expiration.
  /// [publicCertificate] PEM-encoded X.509 certificate containing the public key.
  /// [uid] Unique identifier for the certificate
  const GetZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate({
    required this.isCurrent,
    required this.notAfter,
    required this.publicCertificate,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCurrent': isCurrent,
      'notAfter': notAfter,
      'publicCertificate': publicCertificate,
      'uid': uid,
    };
  }

  factory GetZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate(
      isCurrent: pulumi.Input.fromValue(map['isCurrent'] as bool),
      notAfter: pulumi.Input.fromValue(map['notAfter'] as String),
      publicCertificate: pulumi.Input.fromValue(map['publicCertificate'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
