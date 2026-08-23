// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_service_config.dart';

/// The CA that issues the workload certificate. It includes CA address, type, authentication to CA service, etc.
class CertificateAuthorityConfig {
  /// Defines a CertificateAuthorityServiceConfig.
  final pulumi.Input<CertificateAuthorityServiceConfig>? certificateAuthorityServiceConfig;

  /// Creates a new [CertificateAuthorityConfig].
  /// [certificateAuthorityServiceConfig] Defines a CertificateAuthorityServiceConfig.
  const CertificateAuthorityConfig({
    this.certificateAuthorityServiceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityServiceConfig': ?pulumi.Input.mapOptionalInputValue<CertificateAuthorityServiceConfig, Map<String, dynamic>>(certificateAuthorityServiceConfig, (value) => value.toMap()),
    };
  }

  factory CertificateAuthorityConfig.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityConfig(
      certificateAuthorityServiceConfig: (() { final guardedValue = map['certificateAuthorityServiceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateAuthorityServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
