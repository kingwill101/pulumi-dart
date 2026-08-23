// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuance_config_certificate_authority_config_certificate_authority_service_config.dart';

class CertificateIssuanceConfigCertificateAuthorityConfig {
  /// Defines a CertificateAuthorityServiceConfig.
  /// Structure is documented below.
  final pulumi.Input<CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig>? certificateAuthorityServiceConfig;

  /// Creates a new [CertificateIssuanceConfigCertificateAuthorityConfig].
  /// [certificateAuthorityServiceConfig] Defines a CertificateAuthorityServiceConfig.
  const CertificateIssuanceConfigCertificateAuthorityConfig({
    this.certificateAuthorityServiceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityServiceConfig': ?pulumi.Input.mapOptionalInputValue<CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig, Map<String, dynamic>>(certificateAuthorityServiceConfig, (value) => value.toMap()),
    };
  }

  factory CertificateIssuanceConfigCertificateAuthorityConfig.fromMap(Map<String, dynamic> map) {
    return CertificateIssuanceConfigCertificateAuthorityConfig(
      certificateAuthorityServiceConfig: (() { final guardedValue = map['certificateAuthorityServiceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
