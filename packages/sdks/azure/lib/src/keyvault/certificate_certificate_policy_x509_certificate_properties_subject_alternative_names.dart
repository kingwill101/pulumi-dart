// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames {
  /// A list of alternative DNS names (FQDNs) identified by the Certificate.
  final pulumi.Input<List<String>>? dnsNames;
  /// A list of email addresses identified by this Certificate.
  final pulumi.Input<List<String>>? emails;
  /// A list of User Principal Names identified by the Certificate.
  final pulumi.Input<List<String>>? upns;

  /// Creates a new [CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames].
  /// [dnsNames] A list of alternative DNS names (FQDNs) identified by the Certificate.
  /// [emails] A list of email addresses identified by this Certificate.
  /// [upns] A list of User Principal Names identified by the Certificate.
  CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames({
    this.dnsNames,
    this.emails,
    this.upns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': ?dnsNames,
      'emails': ?emails,
      'upns': ?upns,
    };
  }

  factory CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames(
      dnsNames: map['dnsNames'] == null ? null : ((map['dnsNames']! as List).cast<String>()).input(),
      emails: map['emails'] == null ? null : ((map['emails']! as List).cast<String>()).input(),
      upns: map['upns'] == null ? null : ((map['upns']! as List).cast<String>()).input(),
    );
  }
}

