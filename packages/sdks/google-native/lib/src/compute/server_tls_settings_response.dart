// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_context_response.dart';

/// The TLS settings for the server.
class ServerTlsSettingsResponse {
  /// Configures the mechanism to obtain security certificates and identity information.
  final pulumi.Input<TlsContextResponse> proxyTlsContext;

  /// A list of alternate names to verify the subject identity in the certificate presented by the client.
  final pulumi.Input<List<String>> subjectAltNames;

  /// Indicates whether connections should be secured using TLS. The value of this field determines how TLS is enforced. This field can be set to one of the following: - SIMPLE Secure connections with standard TLS semantics. - MUTUAL Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  final pulumi.Input<String> tlsMode;

  /// Creates a new [ServerTlsSettingsResponse].
  /// [proxyTlsContext] Configures the mechanism to obtain security certificates and identity information.
  /// [subjectAltNames] A list of alternate names to verify the subject identity in the certificate presented by the client.
  /// [tlsMode] Indicates whether connections should be secured using TLS. The value of this field determines how TLS is enforced. This field can be set to one of the following: - SIMPLE Secure connections with standard TLS semantics. - MUTUAL Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  ServerTlsSettingsResponse({
    required this.proxyTlsContext,
    required this.subjectAltNames,
    required this.tlsMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyTlsContext':
          pulumi.Input.mapInputValue<TlsContextResponse, Map<String, dynamic>>(
            proxyTlsContext,
            (value) => value.toMap(),
          ),
      'subjectAltNames': subjectAltNames,
      'tlsMode': tlsMode,
    };
  }

  factory ServerTlsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServerTlsSettingsResponse(
      proxyTlsContext: pulumi.Input.fromValue(
        TlsContextResponse.fromMap(
          (map['proxyTlsContext']! as Map).cast<String, dynamic>(),
        ),
      ),
      subjectAltNames: pulumi.Input.fromValue(
        (map['subjectAltNames'] as List).cast<String>(),
      ),
      tlsMode: pulumi.Input.fromValue(map['tlsMode'] as String),
    );
  }
}
