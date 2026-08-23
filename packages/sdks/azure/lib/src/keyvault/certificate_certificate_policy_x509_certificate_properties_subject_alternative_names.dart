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
  const CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNames({
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
      dnsNames: (() { final guardedValue = map['dnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      upns: (() { final guardedValue = map['upns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
