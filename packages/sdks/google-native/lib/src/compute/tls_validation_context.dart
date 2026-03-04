// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sds_config.dart';
import 'tls_validation_context_validation_source.dart';

/// [Deprecated] Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. validate the client/server certificate.
class TlsValidationContext {
  /// The path to the file holding the CA certificate to validate the client or server certificate.
  final pulumi.Input<String>? certificatePath;

  /// Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  final pulumi.Input<SdsConfig>? sdsConfig;

  /// Defines how TLS certificates are obtained.
  final pulumi.Input<TlsValidationContextValidationSource>? validationSource;

  /// Creates a new [TlsValidationContext].
  /// [certificatePath] The path to the file holding the CA certificate to validate the client or server certificate.
  /// [sdsConfig] Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  /// [validationSource] Defines how TLS certificates are obtained.
  TlsValidationContext({
    this.certificatePath,
    this.sdsConfig,
    this.validationSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePath': ?certificatePath,
      'sdsConfig':
          ?pulumi.Input.mapOptionalInputValue<SdsConfig, Map<String, dynamic>>(
            sdsConfig,
            (value) => value.toMap(),
          ),
      'validationSource':
          ?pulumi.Input.mapOptionalInputValue<
            TlsValidationContextValidationSource,
            String
          >(validationSource, (value) => value.wireValue),
    };
  }

  factory TlsValidationContext.fromMap(Map<String, dynamic> map) {
    return TlsValidationContext(
      certificatePath: (() {
        final guardedValue = map['certificatePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sdsConfig: (() {
        final guardedValue = map['sdsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SdsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      validationSource: (() {
        final guardedValue = map['validationSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TlsValidationContextValidationSource.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
