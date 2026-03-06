// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName {
  /// A list of alternative DNS names (FQDNs) identified by the Certificate.
  final pulumi.Input<List<String>> dnsNames;
  /// A list of email addresses identified by this Certificate.
  final pulumi.Input<List<String>> emails;
  /// A list of User Principal Names identified by the Certificate.
  final pulumi.Input<List<String>> upns;

  /// Creates a new [GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName].
  /// [dnsNames] A list of alternative DNS names (FQDNs) identified by the Certificate.
  /// [emails] A list of email addresses identified by this Certificate.
  /// [upns] A list of User Principal Names identified by the Certificate.
  const GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName({
    required this.dnsNames,
    required this.emails,
    required this.upns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': dnsNames,
      'emails': emails,
      'upns': upns,
    };
  }

  factory GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName(
      dnsNames: pulumi.Input.fromValue((map['dnsNames'] as List).cast<String>()),
      emails: pulumi.Input.fromValue((map['emails'] as List).cast<String>()),
      upns: pulumi.Input.fromValue((map['upns'] as List).cast<String>()),
    );
  }
}

