// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_identity_provider_saml_certificate_set_current_certificate.dart';

class AccessIdentityProviderSamlCertificateSet {
  /// Timestamp when the certificate set was created
  final pulumi.Input<String?>? createdAt;
  /// The currently active certificate used for encrypting SAML assertions
  final pulumi.Input<AccessIdentityProviderSamlCertificateSetCurrentCertificate?>? currentCertificate;
  /// The previous certificate, maintained during rotation to ensure continuity. Null if no rotation has occurred. Mirrors the structure of `samlCertificate`.
  final pulumi.Input<String?>? previousCertificate;
  /// Unique identifier for the certificate set
  final pulumi.Input<String?>? uid;
  /// Timestamp when the certificate set was last updated (e.g., during rotation)
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [AccessIdentityProviderSamlCertificateSet].
  /// [createdAt] Timestamp when the certificate set was created
  /// [currentCertificate] The currently active certificate used for encrypting SAML assertions
  /// [previousCertificate] The previous certificate, maintained during rotation to ensure continuity. Null if no rotation has occurred. Mirrors the structure of `samlCertificate`.
  /// [uid] Unique identifier for the certificate set
  /// [updatedAt] Timestamp when the certificate set was last updated (e.g., during rotation)
  const AccessIdentityProviderSamlCertificateSet({
    this.createdAt,
    this.currentCertificate,
    this.previousCertificate,
    this.uid,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'currentCertificate': ?pulumi.Input.mapOptionalInputValue<AccessIdentityProviderSamlCertificateSetCurrentCertificate, Map<String, dynamic>>(currentCertificate, (value) => value.toMap()),
      'previousCertificate': ?previousCertificate,
      'uid': ?uid,
      'updatedAt': ?updatedAt,
    };
  }

  factory AccessIdentityProviderSamlCertificateSet.fromMap(Map<String, dynamic> map) {
    return AccessIdentityProviderSamlCertificateSet(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentCertificate: (() { final guardedValue = map['currentCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessIdentityProviderSamlCertificateSetCurrentCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      previousCertificate: (() { final guardedValue = map['previousCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
