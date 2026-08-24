// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_identity_providers_result_saml_certificate_set_current_certificate.dart';

class GetZeroTrustAccessIdentityProvidersResultSamlCertificateSet {
  /// Timestamp when the certificate set was created
  final pulumi.Input<String> createdAt;
  /// The currently active certificate used for encrypting SAML assertions
  final pulumi.Input<GetZeroTrustAccessIdentityProvidersResultSamlCertificateSetCurrentCertificate> currentCertificate;
  /// The previous certificate, maintained during rotation to ensure continuity. Null if no rotation has occurred. Mirrors the structure of `samlCertificate`.
  final pulumi.Input<String> previousCertificate;
  /// Unique identifier for the certificate set
  final pulumi.Input<String> uid;
  /// Timestamp when the certificate set was last updated (e.g., during rotation)
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustAccessIdentityProvidersResultSamlCertificateSet].
  /// [createdAt] Timestamp when the certificate set was created
  /// [currentCertificate] The currently active certificate used for encrypting SAML assertions
  /// [previousCertificate] The previous certificate, maintained during rotation to ensure continuity. Null if no rotation has occurred. Mirrors the structure of `samlCertificate`.
  /// [uid] Unique identifier for the certificate set
  /// [updatedAt] Timestamp when the certificate set was last updated (e.g., during rotation)
  const GetZeroTrustAccessIdentityProvidersResultSamlCertificateSet({
    required this.createdAt,
    required this.currentCertificate,
    required this.previousCertificate,
    required this.uid,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'currentCertificate': pulumi.Input.mapInputValue<GetZeroTrustAccessIdentityProvidersResultSamlCertificateSetCurrentCertificate, Map<String, dynamic>>(currentCertificate, (value) => value.toMap()),
      'previousCertificate': previousCertificate,
      'uid': uid,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustAccessIdentityProvidersResultSamlCertificateSet.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProvidersResultSamlCertificateSet(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      currentCertificate: pulumi.Input.fromValue(GetZeroTrustAccessIdentityProvidersResultSamlCertificateSetCurrentCertificate.fromMap((map['currentCertificate']! as Map).cast<String, dynamic>())),
      previousCertificate: pulumi.Input.fromValue(map['previousCertificate'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
