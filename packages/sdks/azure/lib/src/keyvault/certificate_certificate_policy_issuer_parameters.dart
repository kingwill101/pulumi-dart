// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificatePolicyIssuerParameters {
  /// The name of the Certificate Issuer. Possible values include `Self` (for self-signed certificate), or `Unknown` (for a certificate issuing authority like `Let's Encrypt` and Azure direct supported ones).
  final pulumi.Input<String> name;

  /// Creates a new [CertificateCertificatePolicyIssuerParameters].
  /// [name] The name of the Certificate Issuer. Possible values include `Self` (for self-signed certificate), or `Unknown` (for a certificate issuing authority like `Let's Encrypt` and Azure direct supported ones).
  CertificateCertificatePolicyIssuerParameters({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory CertificateCertificatePolicyIssuerParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateCertificatePolicyIssuerParameters(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
