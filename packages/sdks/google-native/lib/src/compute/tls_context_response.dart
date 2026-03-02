// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_certificate_context_response.dart';
import 'tls_validation_context_response.dart';

/// [Deprecated] The TLS settings for the client or server. The TLS settings for the client or server.
class TlsContextResponse {
  /// Defines the mechanism to obtain the client or server certificate.
  final pulumi.Input<TlsCertificateContextResponse> certificateContext;
  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. If omitted, the proxy will not validate the server or client certificate.
  final pulumi.Input<TlsValidationContextResponse> validationContext;

  /// Creates a new [TlsContextResponse].
  /// [certificateContext] Defines the mechanism to obtain the client or server certificate.
  /// [validationContext] Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. If omitted, the proxy will not validate the server or client certificate.
  TlsContextResponse({
    required this.certificateContext,
    required this.validationContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateContext': pulumi.Input.mapInputValue<TlsCertificateContextResponse, Map<String, dynamic>>(certificateContext, (value) => value.toMap()),
      'validationContext': pulumi.Input.mapInputValue<TlsValidationContextResponse, Map<String, dynamic>>(validationContext, (value) => value.toMap()),
    };
  }

  factory TlsContextResponse.fromMap(Map<String, dynamic> map) {
    return TlsContextResponse(
      certificateContext: (TlsCertificateContextResponse.fromMap((map['certificateContext'] as Map).cast<String, dynamic>())).input(),
      validationContext: (TlsValidationContextResponse.fromMap((map['validationContext'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

