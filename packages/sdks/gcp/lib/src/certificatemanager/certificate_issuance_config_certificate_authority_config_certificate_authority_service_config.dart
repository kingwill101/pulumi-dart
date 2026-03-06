// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig {
  /// A CA pool resource used to issue a certificate.
  /// The CA pool string has a relative resource path following the form
  /// "projects/{project}/locations/{location}/caPools/{caPool}".
  final pulumi.Input<String> caPool;

  /// Creates a new [CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig].
  /// [caPool] A CA pool resource used to issue a certificate.
  const CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig({
    required this.caPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPool': caPool,
    };
  }

  factory CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig.fromMap(Map<String, dynamic> map) {
    return CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig(
      caPool: pulumi.Input.fromValue(map['caPool'] as String),
    );
  }
}

