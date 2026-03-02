// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_description_x509_description_additional_extension.dart';
import 'certificate_certificate_description_x509_description_ca_option.dart';
import 'certificate_certificate_description_x509_description_key_usage.dart';
import 'certificate_certificate_description_x509_description_name_constraint.dart';
import 'certificate_certificate_description_x509_description_policy_id.dart';

class CertificateCertificateDescriptionX509Description {
  /// (Output)
  /// Describes custom X.509 extensions.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionAdditionalExtension>>? additionalExtensions;
  /// (Output)
  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>>? aiaOcspServers;
  /// (Output)
  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionCaOption>>? caOptions;
  /// (Output)
  /// Indicates the intended use for keys that correspond to a certificate.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionKeyUsage>>? keyUsages;
  /// (Output)
  /// Describes the X.509 name constraints extension.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionNameConstraint>>? nameConstraints;
  /// (Output)
  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionPolicyId>>? policyIds;

  /// Creates a new [CertificateCertificateDescriptionX509Description].
  /// [additionalExtensions] (Output)
  /// [aiaOcspServers] (Output)
  /// [caOptions] (Output)
  /// [keyUsages] (Output)
  /// [nameConstraints] (Output)
  /// [policyIds] (Output)
  CertificateCertificateDescriptionX509Description({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    this.keyUsages,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionAdditionalExtension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionAdditionalExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionCaOption>, List<Map<String, dynamic>>>(caOptions, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionCaOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyUsages': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionKeyUsage>, List<Map<String, dynamic>>>(keyUsages, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameConstraints': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionNameConstraint>, List<Map<String, dynamic>>>(nameConstraints, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionNameConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyIds': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionPolicyId>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionPolicyId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateCertificateDescriptionX509Description.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509Description(
      additionalExtensions: map['additionalExtensions'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionAdditionalExtension>(map['additionalExtensions'], (value) => CertificateCertificateDescriptionX509DescriptionAdditionalExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aiaOcspServers: map['aiaOcspServers'] == null ? null : ((map['aiaOcspServers'] as List).cast<String>()).input(),
      caOptions: map['caOptions'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionCaOption>(map['caOptions'], (value) => CertificateCertificateDescriptionX509DescriptionCaOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyUsages: map['keyUsages'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionKeyUsage>(map['keyUsages'], (value) => CertificateCertificateDescriptionX509DescriptionKeyUsage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nameConstraints: map['nameConstraints'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionNameConstraint>(map['nameConstraints'], (value) => CertificateCertificateDescriptionX509DescriptionNameConstraint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyIds: map['policyIds'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionPolicyId>(map['policyIds'], (value) => CertificateCertificateDescriptionX509DescriptionPolicyId.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

