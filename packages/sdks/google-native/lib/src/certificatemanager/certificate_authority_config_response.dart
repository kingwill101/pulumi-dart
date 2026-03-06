// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_service_config_response.dart';

/// The CA that issues the workload certificate. It includes CA address, type, authentication to CA service, etc.
class CertificateAuthorityConfigResponse {
  /// Defines a CertificateAuthorityServiceConfig.
  final pulumi.Input<CertificateAuthorityServiceConfigResponse> certificateAuthorityServiceConfig;

  /// Creates a new [CertificateAuthorityConfigResponse].
  /// [certificateAuthorityServiceConfig] Defines a CertificateAuthorityServiceConfig.
  const CertificateAuthorityConfigResponse({
    required this.certificateAuthorityServiceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityServiceConfig': pulumi.Input.mapInputValue<CertificateAuthorityServiceConfigResponse, Map<String, dynamic>>(certificateAuthorityServiceConfig, (value) => value.toMap()),
    };
  }

  factory CertificateAuthorityConfigResponse.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityConfigResponse(
      certificateAuthorityServiceConfig: pulumi.Input.fromValue(CertificateAuthorityServiceConfigResponse.fromMap((map['certificateAuthorityServiceConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

