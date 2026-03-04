// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_fingerprint_response.dart';
import 'key_id_response.dart';
import 'public_key_response.dart';
import 'subject_description_response.dart';
import 'x509_parameters_response.dart';

/// A CertificateDescription describes an X.509 certificate or CSR that has been issued, as an alternative to using ASN.1 / X.509.
class CertificateDescriptionResponse {
  /// Describes lists of issuer CA certificate URLs that appear in the "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>> aiaIssuingCertificateUrls;

  /// Identifies the subject_key_id of the parent certificate, per https://tools.ietf.org/html/rfc5280#section-4.2.1.1
  final pulumi.Input<KeyIdResponse> authorityKeyId;

  /// The hash of the x.509 certificate.
  final pulumi.Input<CertificateFingerprintResponse> certFingerprint;

  /// Describes a list of locations to obtain CRL information, i.e. the DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#section-4.2.1.13
  final pulumi.Input<List<String>> crlDistributionPoints;

  /// The public key that corresponds to an issued certificate.
  final pulumi.Input<PublicKeyResponse> publicKey;

  /// Describes some of the values in a certificate that are related to the subject and lifetime.
  final pulumi.Input<SubjectDescriptionResponse> subjectDescription;

  /// Provides a means of identifiying certificates that contain a particular public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.
  final pulumi.Input<KeyIdResponse> subjectKeyId;

  /// Describes some of the technical X.509 fields in a certificate.
  final pulumi.Input<X509ParametersResponse> x509Description;

  /// Creates a new [CertificateDescriptionResponse].
  /// [aiaIssuingCertificateUrls] Describes lists of issuer CA certificate URLs that appear in the "Authority Information Access" extension in the certificate.
  /// [authorityKeyId] Identifies the subject_key_id of the parent certificate, per https://tools.ietf.org/html/rfc5280#section-4.2.1.1
  /// [certFingerprint] The hash of the x.509 certificate.
  /// [crlDistributionPoints] Describes a list of locations to obtain CRL information, i.e. the DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#section-4.2.1.13
  /// [publicKey] The public key that corresponds to an issued certificate.
  /// [subjectDescription] Describes some of the values in a certificate that are related to the subject and lifetime.
  /// [subjectKeyId] Provides a means of identifiying certificates that contain a particular public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.
  /// [x509Description] Describes some of the technical X.509 fields in a certificate.
  CertificateDescriptionResponse({
    required this.aiaIssuingCertificateUrls,
    required this.authorityKeyId,
    required this.certFingerprint,
    required this.crlDistributionPoints,
    required this.publicKey,
    required this.subjectDescription,
    required this.subjectKeyId,
    required this.x509Description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiaIssuingCertificateUrls': aiaIssuingCertificateUrls,
      'authorityKeyId':
          pulumi.Input.mapInputValue<KeyIdResponse, Map<String, dynamic>>(
            authorityKeyId,
            (value) => value.toMap(),
          ),
      'certFingerprint':
          pulumi.Input.mapInputValue<
            CertificateFingerprintResponse,
            Map<String, dynamic>
          >(certFingerprint, (value) => value.toMap()),
      'crlDistributionPoints': crlDistributionPoints,
      'publicKey':
          pulumi.Input.mapInputValue<PublicKeyResponse, Map<String, dynamic>>(
            publicKey,
            (value) => value.toMap(),
          ),
      'subjectDescription':
          pulumi.Input.mapInputValue<
            SubjectDescriptionResponse,
            Map<String, dynamic>
          >(subjectDescription, (value) => value.toMap()),
      'subjectKeyId':
          pulumi.Input.mapInputValue<KeyIdResponse, Map<String, dynamic>>(
            subjectKeyId,
            (value) => value.toMap(),
          ),
      'x509Description':
          pulumi.Input.mapInputValue<
            X509ParametersResponse,
            Map<String, dynamic>
          >(x509Description, (value) => value.toMap()),
    };
  }

  factory CertificateDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return CertificateDescriptionResponse(
      aiaIssuingCertificateUrls: pulumi.Input.fromValue(
        (map['aiaIssuingCertificateUrls'] as List).cast<String>(),
      ),
      authorityKeyId: pulumi.Input.fromValue(
        KeyIdResponse.fromMap(
          (map['authorityKeyId']! as Map).cast<String, dynamic>(),
        ),
      ),
      certFingerprint: pulumi.Input.fromValue(
        CertificateFingerprintResponse.fromMap(
          (map['certFingerprint']! as Map).cast<String, dynamic>(),
        ),
      ),
      crlDistributionPoints: pulumi.Input.fromValue(
        (map['crlDistributionPoints'] as List).cast<String>(),
      ),
      publicKey: pulumi.Input.fromValue(
        PublicKeyResponse.fromMap(
          (map['publicKey']! as Map).cast<String, dynamic>(),
        ),
      ),
      subjectDescription: pulumi.Input.fromValue(
        SubjectDescriptionResponse.fromMap(
          (map['subjectDescription']! as Map).cast<String, dynamic>(),
        ),
      ),
      subjectKeyId: pulumi.Input.fromValue(
        KeyIdResponse.fromMap(
          (map['subjectKeyId']! as Map).cast<String, dynamic>(),
        ),
      ),
      x509Description: pulumi.Input.fromValue(
        X509ParametersResponse.fromMap(
          (map['x509Description']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
