// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sds_config.dart';
import 'tls_certificate_context_certificate_source.dart';
import 'tls_certificate_paths.dart';

/// [Deprecated] Defines the mechanism to obtain the client or server certificate. Defines the mechanism to obtain the client or server certificate.
class TlsCertificateContext {
  /// Specifies the certificate and private key paths. This field is applicable only if tlsCertificateSource is set to USE_PATH.
  final pulumi.Input<TlsCertificatePaths>? certificatePaths;

  /// Defines how TLS certificates are obtained.
  final pulumi.Input<TlsCertificateContextCertificateSource>? certificateSource;

  /// Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  final pulumi.Input<SdsConfig>? sdsConfig;

  /// Creates a new [TlsCertificateContext].
  /// [certificatePaths] Specifies the certificate and private key paths. This field is applicable only if tlsCertificateSource is set to USE_PATH.
  /// [certificateSource] Defines how TLS certificates are obtained.
  /// [sdsConfig] Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  TlsCertificateContext({
    this.certificatePaths,
    this.certificateSource,
    this.sdsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePaths':
          ?pulumi.Input.mapOptionalInputValue<
            TlsCertificatePaths,
            Map<String, dynamic>
          >(certificatePaths, (value) => value.toMap()),
      'certificateSource':
          ?pulumi.Input.mapOptionalInputValue<
            TlsCertificateContextCertificateSource,
            String
          >(certificateSource, (value) => value.wireValue),
      'sdsConfig':
          ?pulumi.Input.mapOptionalInputValue<SdsConfig, Map<String, dynamic>>(
            sdsConfig,
            (value) => value.toMap(),
          ),
    };
  }

  factory TlsCertificateContext.fromMap(Map<String, dynamic> map) {
    return TlsCertificateContext(
      certificatePaths: (() {
        final guardedValue = map['certificatePaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TlsCertificatePaths.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      certificateSource: (() {
        final guardedValue = map['certificateSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TlsCertificateContextCertificateSource.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      sdsConfig: (() {
        final guardedValue = map['sdsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SdsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
