// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information required to contact CA service.
class CertificateAuthorityServiceConfig {
  /// A CA pool resource used to issue a certificate. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  final pulumi.Input<String> caPool;

  /// Creates a new [CertificateAuthorityServiceConfig].
  /// [caPool] A CA pool resource used to issue a certificate. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  CertificateAuthorityServiceConfig({
    required this.caPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPool': caPool,
    };
  }

  factory CertificateAuthorityServiceConfig.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityServiceConfig(
      caPool: (map['caPool'] as String).input(),
    );
  }
}

