// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sds_config_response.dart';
import 'tls_certificate_paths_response.dart';

/// [Deprecated] Defines the mechanism to obtain the client or server certificate. Defines the mechanism to obtain the client or server certificate.
class TlsCertificateContextResponse {
  /// Specifies the certificate and private key paths. This field is applicable only if tlsCertificateSource is set to USE_PATH.
  final pulumi.Input<TlsCertificatePathsResponse> certificatePaths;
  /// Defines how TLS certificates are obtained.
  final pulumi.Input<String> certificateSource;
  /// Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  final pulumi.Input<SdsConfigResponse> sdsConfig;

  /// Creates a new [TlsCertificateContextResponse].
  /// [certificatePaths] Specifies the certificate and private key paths. This field is applicable only if tlsCertificateSource is set to USE_PATH.
  /// [certificateSource] Defines how TLS certificates are obtained.
  /// [sdsConfig] Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  TlsCertificateContextResponse({
    required this.certificatePaths,
    required this.certificateSource,
    required this.sdsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePaths': pulumi.Input.mapInputValue<TlsCertificatePathsResponse, Map<String, dynamic>>(certificatePaths, (value) => value.toMap()),
      'certificateSource': certificateSource,
      'sdsConfig': pulumi.Input.mapInputValue<SdsConfigResponse, Map<String, dynamic>>(sdsConfig, (value) => value.toMap()),
    };
  }

  factory TlsCertificateContextResponse.fromMap(Map<String, dynamic> map) {
    return TlsCertificateContextResponse(
      certificatePaths: pulumi.Input.fromValue(TlsCertificatePathsResponse.fromMap((map['certificatePaths']! as Map).cast<String, dynamic>())),
      certificateSource: pulumi.Input.fromValue(map['certificateSource'] as String),
      sdsConfig: pulumi.Input.fromValue(SdsConfigResponse.fromMap((map['sdsConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

