// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_description_authority_key_id.dart';
import 'certificate_certificate_description_cert_fingerprint.dart';
import 'certificate_certificate_description_public_key.dart';
import 'certificate_certificate_description_subject_description.dart';
import 'certificate_certificate_description_subject_key_id.dart';
import 'certificate_certificate_description_x509_description.dart';

class CertificateCertificateDescription {
  /// (Output)
  /// Describes lists of issuer CA certificate URLs that appear in the "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>>? aiaIssuingCertificateUrls;
  /// (Output)
  /// Identifies the subjectKeyId of the parent certificate, per https://tools.ietf.org/html/rfc5280#section-4.2.1.1
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionAuthorityKeyId>>? authorityKeyIds;
  /// (Output)
  /// The hash of the x.509 certificate.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionCertFingerprint>>? certFingerprints;
  /// (Output)
  /// Describes a list of locations to obtain CRL information, i.e. the DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#section-4.2.1.13
  final pulumi.Input<List<String>>? crlDistributionPoints;
  /// (Output)
  /// A PublicKey describes a public key.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionPublicKey>>? publicKeys;
  /// (Output)
  /// Describes some of the values in a certificate that are related to the subject and lifetime.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionSubjectDescription>>? subjectDescriptions;
  /// (Output)
  /// Provides a means of identifiying certificates that contain a particular public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionSubjectKeyId>>? subjectKeyIds;
  /// (Output)
  /// A structured description of the issued X.509 certificate.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509Description>>? x509Descriptions;

  /// Creates a new [CertificateCertificateDescription].
  /// [aiaIssuingCertificateUrls] (Output)
  /// [authorityKeyIds] (Output)
  /// [certFingerprints] (Output)
  /// [crlDistributionPoints] (Output)
  /// [publicKeys] (Output)
  /// [subjectDescriptions] (Output)
  /// [subjectKeyIds] (Output)
  /// [x509Descriptions] (Output)
  CertificateCertificateDescription({
    this.aiaIssuingCertificateUrls,
    this.authorityKeyIds,
    this.certFingerprints,
    this.crlDistributionPoints,
    this.publicKeys,
    this.subjectDescriptions,
    this.subjectKeyIds,
    this.x509Descriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiaIssuingCertificateUrls': ?aiaIssuingCertificateUrls,
      'authorityKeyIds': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionAuthorityKeyId>, List<Map<String, dynamic>>>(authorityKeyIds, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionAuthorityKeyId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certFingerprints': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionCertFingerprint>, List<Map<String, dynamic>>>(certFingerprints, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionCertFingerprint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'crlDistributionPoints': ?crlDistributionPoints,
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionPublicKey>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subjectDescriptions': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionSubjectDescription>, List<Map<String, dynamic>>>(subjectDescriptions, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionSubjectDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subjectKeyIds': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionSubjectKeyId>, List<Map<String, dynamic>>>(subjectKeyIds, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionSubjectKeyId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'x509Descriptions': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509Description>, List<Map<String, dynamic>>>(x509Descriptions, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509Description, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateCertificateDescription.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescription(
      aiaIssuingCertificateUrls: map['aiaIssuingCertificateUrls'] == null ? null : ((map['aiaIssuingCertificateUrls']! as List).cast<String>()).input(),
      authorityKeyIds: map['authorityKeyIds'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionAuthorityKeyId>(map['authorityKeyIds']!, (value) => CertificateCertificateDescriptionAuthorityKeyId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      certFingerprints: map['certFingerprints'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionCertFingerprint>(map['certFingerprints']!, (value) => CertificateCertificateDescriptionCertFingerprint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      crlDistributionPoints: map['crlDistributionPoints'] == null ? null : ((map['crlDistributionPoints']! as List).cast<String>()).input(),
      publicKeys: map['publicKeys'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionPublicKey>(map['publicKeys']!, (value) => CertificateCertificateDescriptionPublicKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subjectDescriptions: map['subjectDescriptions'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionSubjectDescription>(map['subjectDescriptions']!, (value) => CertificateCertificateDescriptionSubjectDescription.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subjectKeyIds: map['subjectKeyIds'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionSubjectKeyId>(map['subjectKeyIds']!, (value) => CertificateCertificateDescriptionSubjectKeyId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      x509Descriptions: map['x509Descriptions'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionX509Description>(map['x509Descriptions']!, (value) => CertificateCertificateDescriptionX509Description.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

