// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certifiate_certificate_policy_x509_certificate_properties_subject_alternative_names.dart';

class CertifiateCertificatePolicyX509CertificateProperties {
  /// A list of Extended/Enhanced Key Usages.
  final pulumi.Input<List<String>>? extendedKeyUsages;
  /// A list of uses associated with this Key. Possible values include `cRLSign`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `encipherOnly`, `keyAgreement`, `keyCertSign`, `keyEncipherment` and `nonRepudiation` and are case-sensitive.
  final pulumi.Input<List<String>> keyUsages;
  /// The Certificate's Subject.
  final pulumi.Input<String> subject;
  /// A `subject_alternative_names` block as defined below.
  final pulumi.Input<CertifiateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames>? subjectAlternativeNames;
  /// The Certificates Validity Period in Months.
  final pulumi.Input<int> validityInMonths;

  /// Creates a new [CertifiateCertificatePolicyX509CertificateProperties].
  /// [extendedKeyUsages] A list of Extended/Enhanced Key Usages.
  /// [keyUsages] A list of uses associated with this Key. Possible values include `cRLSign`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `encipherOnly`, `keyAgreement`, `keyCertSign`, `keyEncipherment` and `nonRepudiation` and are case-sensitive.
  /// [subject] The Certificate's Subject.
  /// [subjectAlternativeNames] A `subject_alternative_names` block as defined below.
  /// [validityInMonths] The Certificates Validity Period in Months.
  CertifiateCertificatePolicyX509CertificateProperties({
    this.extendedKeyUsages,
    required this.keyUsages,
    required this.subject,
    this.subjectAlternativeNames,
    required this.validityInMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedKeyUsages': ?extendedKeyUsages,
      'keyUsages': keyUsages,
      'subject': subject,
      'subjectAlternativeNames': ?pulumi.Input.mapOptionalInputValue<CertifiateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'validityInMonths': validityInMonths,
    };
  }

  factory CertifiateCertificatePolicyX509CertificateProperties.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicyX509CertificateProperties(
      extendedKeyUsages: map['extendedKeyUsages'] == null ? null : ((map['extendedKeyUsages'] as List).cast<String>()).input(),
      keyUsages: ((map['keyUsages'] as List).cast<String>()).input(),
      subject: (map['subject'] as String).input(),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : (CertifiateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames.fromMap((map['subjectAlternativeNames'] as Map).cast<String, dynamic>())).input(),
      validityInMonths: (map['validityInMonths'] as int).input(),
    );
  }
}

