// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_authority_service_config.dart';

/// The CA that issues the workload certificate. It includes CA address, type, authentication to CA service, etc.
class CertificateAuthorityConfig {
  /// Defines a CertificateAuthorityServiceConfig.
  final CertificateAuthorityServiceConfig? certificateAuthorityServiceConfig;

  /// Creates a new [CertificateAuthorityConfig].
  /// [certificateAuthorityServiceConfig] Defines a CertificateAuthorityServiceConfig.
  CertificateAuthorityConfig({
    this.certificateAuthorityServiceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityServiceConfig': ?certificateAuthorityServiceConfig == null ? null : certificateAuthorityServiceConfig!.toMap(),
    };
  }

  factory CertificateAuthorityConfig.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityConfig(
      certificateAuthorityServiceConfig: map['certificateAuthorityServiceConfig'] == null ? null : CertificateAuthorityServiceConfig.fromMap((map['certificateAuthorityServiceConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

