// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_tls_settings_tls_mode.dart';
import 'tls_context.dart';

/// The TLS settings for the server.
class ServerTlsSettings {
  /// Configures the mechanism to obtain security certificates and identity information.
  final pulumi.Input<TlsContext>? proxyTlsContext;
  /// A list of alternate names to verify the subject identity in the certificate presented by the client.
  final pulumi.Input<List<String>>? subjectAltNames;
  /// Indicates whether connections should be secured using TLS. The value of this field determines how TLS is enforced. This field can be set to one of the following: - SIMPLE Secure connections with standard TLS semantics. - MUTUAL Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  final pulumi.Input<ServerTlsSettingsTlsMode>? tlsMode;

  /// Creates a new [ServerTlsSettings].
  /// [proxyTlsContext] Configures the mechanism to obtain security certificates and identity information.
  /// [subjectAltNames] A list of alternate names to verify the subject identity in the certificate presented by the client.
  /// [tlsMode] Indicates whether connections should be secured using TLS. The value of this field determines how TLS is enforced. This field can be set to one of the following: - SIMPLE Secure connections with standard TLS semantics. - MUTUAL Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  const ServerTlsSettings({
    this.proxyTlsContext,
    this.subjectAltNames,
    this.tlsMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyTlsContext': ?pulumi.Input.mapOptionalInputValue<TlsContext, Map<String, dynamic>>(proxyTlsContext, (value) => value.toMap()),
      'subjectAltNames': ?subjectAltNames,
      'tlsMode': ?pulumi.Input.mapOptionalInputValue<ServerTlsSettingsTlsMode, String>(tlsMode, (value) => value.wireValue),
    };
  }

  factory ServerTlsSettings.fromMap(Map<String, dynamic> map) {
    return ServerTlsSettings(
      proxyTlsContext: (() { final guardedValue = map['proxyTlsContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subjectAltNames: (() { final guardedValue = map['subjectAltNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tlsMode: (() { final guardedValue = map['tlsMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerTlsSettingsTlsMode.fromValue(guardedValue as String)); })(),
    );
  }
}

