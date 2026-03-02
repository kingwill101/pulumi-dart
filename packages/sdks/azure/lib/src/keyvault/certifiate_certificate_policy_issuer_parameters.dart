// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertifiateCertificatePolicyIssuerParameters {
  /// The name of the Certificate Issuer. Possible values include `Self` (for self-signed certificate), or `Unknown` (for a certificate issuing authority like `Let's Encrypt` and Azure direct supported ones).
  final pulumi.Input<String> name;

  /// Creates a new [CertifiateCertificatePolicyIssuerParameters].
  /// [name] The name of the Certificate Issuer. Possible values include `Self` (for self-signed certificate), or `Unknown` (for a certificate issuing authority like `Let's Encrypt` and Azure direct supported ones).
  CertifiateCertificatePolicyIssuerParameters({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CertifiateCertificatePolicyIssuerParameters.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicyIssuerParameters(
      name: (map['name'] as String).input(),
    );
  }
}

