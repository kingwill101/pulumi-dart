// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_context_response.dart';

/// [Deprecated] The client side authentication settings for connection originating from the backend service. the backend service.
class ClientTlsSettingsResponse {
  /// Configures the mechanism to obtain client-side security certificates and identity information. This field is only applicable when mode is set to MUTUAL.
  final pulumi.Input<TlsContextResponse> clientTlsContext;
  /// Indicates whether connections to this port should be secured using TLS. The value of this field determines how TLS is enforced. This can be set to one of the following values: DISABLE: Do not setup a TLS connection to the backends. SIMPLE: Originate a TLS connection to the backends. MUTUAL: Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  final pulumi.Input<String> mode;
  /// SNI string to present to the server during TLS handshake. This field is applicable only when mode is SIMPLE or MUTUAL.
  final pulumi.Input<String> sni;
  /// A list of alternate names to verify the subject identity in the certificate.If specified, the proxy will verify that the server certificate's subject alt name matches one of the specified values. This field is applicable only when mode is SIMPLE or MUTUAL.
  final pulumi.Input<List<String>> subjectAltNames;

  /// Creates a new [ClientTlsSettingsResponse].
  /// [clientTlsContext] Configures the mechanism to obtain client-side security certificates and identity information. This field is only applicable when mode is set to MUTUAL.
  /// [mode] Indicates whether connections to this port should be secured using TLS. The value of this field determines how TLS is enforced. This can be set to one of the following values: DISABLE: Do not setup a TLS connection to the backends. SIMPLE: Originate a TLS connection to the backends. MUTUAL: Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  /// [sni] SNI string to present to the server during TLS handshake. This field is applicable only when mode is SIMPLE or MUTUAL.
  /// [subjectAltNames] A list of alternate names to verify the subject identity in the certificate.If specified, the proxy will verify that the server certificate's subject alt name matches one of the specified values. This field is applicable only when mode is SIMPLE or MUTUAL.
  const ClientTlsSettingsResponse({
    required this.clientTlsContext,
    required this.mode,
    required this.sni,
    required this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTlsContext': pulumi.Input.mapInputValue<TlsContextResponse, Map<String, dynamic>>(clientTlsContext, (value) => value.toMap()),
      'mode': mode,
      'sni': sni,
      'subjectAltNames': subjectAltNames,
    };
  }

  factory ClientTlsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ClientTlsSettingsResponse(
      clientTlsContext: pulumi.Input.fromValue(TlsContextResponse.fromMap((map['clientTlsContext']! as Map).cast<String, dynamic>())),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      sni: pulumi.Input.fromValue(map['sni'] as String),
      subjectAltNames: pulumi.Input.fromValue((map['subjectAltNames'] as List).cast<String>()),
    );
  }
}
