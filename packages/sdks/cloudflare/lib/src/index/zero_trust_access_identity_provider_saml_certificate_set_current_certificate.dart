// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate {
  /// Indicates whether this is the currently active certificate
  final pulumi.Input<bool?>? isCurrent;
  /// Certificate expiration date. Certificates are automatically rotated 30 days before expiration.
  final pulumi.Input<String?>? notAfter;
  /// PEM-encoded X.509 certificate containing the public key.
  /// Configure this certificate in your external SAML Identity Provider to enable encryption.
  final pulumi.Input<String?>? publicCertificate;
  /// Unique identifier for the certificate
  final pulumi.Input<String?>? uid;

  /// Creates a new [ZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate].
  /// [isCurrent] Indicates whether this is the currently active certificate
  /// [notAfter] Certificate expiration date. Certificates are automatically rotated 30 days before expiration.
  /// [publicCertificate] PEM-encoded X.509 certificate containing the public key.
  /// [uid] Unique identifier for the certificate
  const ZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate({
    this.isCurrent,
    this.notAfter,
    this.publicCertificate,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCurrent': ?isCurrent,
      'notAfter': ?notAfter,
      'publicCertificate': ?publicCertificate,
      'uid': ?uid,
    };
  }

  factory ZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate(
      isCurrent: (() { final guardedValue = map['isCurrent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCertificate: (() { final guardedValue = map['publicCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
