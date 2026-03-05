// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_policy_x509_certificate_properties_subject_alternative_names.dart';

class CertificateCertificatePolicyX509CertificateProperties {
  /// A list of Extended/Enhanced Key Usages.
  final pulumi.Input<List<String>>? extendedKeyUsages;
  /// A list of uses associated with this Key. Possible values include `cRLSign`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `encipherOnly`, `keyAgreement`, `keyCertSign`, `keyEncipherment` and `nonRepudiation` and are case-sensitive.
  final pulumi.Input<List<String>> keyUsages;
  /// The Certificate's Subject.
  final pulumi.Input<String> subject;
  /// A `subject_alternative_names` block as defined below.
  final pulumi.Input<CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames>? subjectAlternativeNames;
  /// The Certificates Validity Period in Months.
  final pulumi.Input<int> validityInMonths;

  /// Creates a new [CertificateCertificatePolicyX509CertificateProperties].
  /// [extendedKeyUsages] A list of Extended/Enhanced Key Usages.
  /// [keyUsages] A list of uses associated with this Key. Possible values include `cRLSign`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `encipherOnly`, `keyAgreement`, `keyCertSign`, `keyEncipherment` and `nonRepudiation` and are case-sensitive.
  /// [subject] The Certificate's Subject.
  /// [subjectAlternativeNames] A `subject_alternative_names` block as defined below.
  /// [validityInMonths] The Certificates Validity Period in Months.
  CertificateCertificatePolicyX509CertificateProperties({
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
      'subjectAlternativeNames': ?pulumi.Input.mapOptionalInputValue<CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'validityInMonths': validityInMonths,
    };
  }

  factory CertificateCertificatePolicyX509CertificateProperties.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicyX509CertificateProperties(
      extendedKeyUsages: (() { final guardedValue = map['extendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyUsages: pulumi.Input.fromValue((map['keyUsages'] as List).cast<String>()),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validityInMonths: pulumi.Input.fromValue(map['validityInMonths'] as int),
    );
  }
}

