// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_certificate_context.dart';
import 'tls_validation_context.dart';

/// [Deprecated] The TLS settings for the client or server. The TLS settings for the client or server.
class TlsContext {
  /// Defines the mechanism to obtain the client or server certificate.
  final pulumi.Input<TlsCertificateContext>? certificateContext;
  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. If omitted, the proxy will not validate the server or client certificate.
  final pulumi.Input<TlsValidationContext>? validationContext;

  /// Creates a new [TlsContext].
  /// [certificateContext] Defines the mechanism to obtain the client or server certificate.
  /// [validationContext] Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. If omitted, the proxy will not validate the server or client certificate.
  const TlsContext({
    this.certificateContext,
    this.validationContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateContext': ?pulumi.Input.mapOptionalInputValue<TlsCertificateContext, Map<String, dynamic>>(certificateContext, (value) => value.toMap()),
      'validationContext': ?pulumi.Input.mapOptionalInputValue<TlsValidationContext, Map<String, dynamic>>(validationContext, (value) => value.toMap()),
    };
  }

  factory TlsContext.fromMap(Map<String, dynamic> map) {
    return TlsContext(
      certificateContext: (() { final guardedValue = map['certificateContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsCertificateContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationContext: (() { final guardedValue = map['validationContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsValidationContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

