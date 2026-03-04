// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information required to contact CA service.
class CertificateAuthorityServiceConfigResponse {
  /// A CA pool resource used to issue a certificate. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  final pulumi.Input<String> caPool;

  /// Creates a new [CertificateAuthorityServiceConfigResponse].
  /// [caPool] A CA pool resource used to issue a certificate. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  CertificateAuthorityServiceConfigResponse({required this.caPool});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'caPool': caPool};
  }

  factory CertificateAuthorityServiceConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateAuthorityServiceConfigResponse(
      caPool: pulumi.Input.fromValue(map['caPool'] as String),
    );
  }
}
