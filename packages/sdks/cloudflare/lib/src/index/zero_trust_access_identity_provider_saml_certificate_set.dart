// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_identity_provider_saml_certificate_set_current_certificate.dart';

class ZeroTrustAccessIdentityProviderSamlCertificateSet {
  /// Timestamp when the certificate set was created
  final pulumi.Input<String?>? createdAt;
  /// The currently active certificate used for encrypting SAML assertions
  final pulumi.Input<ZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate?>? currentCertificate;
  /// The previous certificate, maintained during rotation to ensure continuity. Null if no rotation has occurred. Mirrors the structure of `samlCertificate`.
  final pulumi.Input<String?>? previousCertificate;
  /// Unique identifier for the certificate set
  final pulumi.Input<String?>? uid;
  /// Timestamp when the certificate set was last updated (e.g., during rotation)
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustAccessIdentityProviderSamlCertificateSet].
  /// [createdAt] Timestamp when the certificate set was created
  /// [currentCertificate] The currently active certificate used for encrypting SAML assertions
  /// [previousCertificate] The previous certificate, maintained during rotation to ensure continuity. Null if no rotation has occurred. Mirrors the structure of `samlCertificate`.
  /// [uid] Unique identifier for the certificate set
  /// [updatedAt] Timestamp when the certificate set was last updated (e.g., during rotation)
  const ZeroTrustAccessIdentityProviderSamlCertificateSet({
    this.createdAt,
    this.currentCertificate,
    this.previousCertificate,
    this.uid,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'currentCertificate': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate, Map<String, dynamic>>(currentCertificate, (value) => value.toMap()),
      'previousCertificate': ?previousCertificate,
      'uid': ?uid,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustAccessIdentityProviderSamlCertificateSet.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessIdentityProviderSamlCertificateSet(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentCertificate: (() { final guardedValue = map['currentCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessIdentityProviderSamlCertificateSetCurrentCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      previousCertificate: (() { final guardedValue = map['previousCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
