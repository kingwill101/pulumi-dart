// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_tls_settings_mode.dart';
import 'tls_context.dart';

/// [Deprecated] The client side authentication settings for connection originating from the backend service. the backend service.
class ClientTlsSettings {
  /// Configures the mechanism to obtain client-side security certificates and identity information. This field is only applicable when mode is set to MUTUAL.
  final pulumi.Input<TlsContext>? clientTlsContext;

  /// Indicates whether connections to this port should be secured using TLS. The value of this field determines how TLS is enforced. This can be set to one of the following values: DISABLE: Do not setup a TLS connection to the backends. SIMPLE: Originate a TLS connection to the backends. MUTUAL: Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  final pulumi.Input<ClientTlsSettingsMode>? mode;

  /// SNI string to present to the server during TLS handshake. This field is applicable only when mode is SIMPLE or MUTUAL.
  final pulumi.Input<String>? sni;

  /// A list of alternate names to verify the subject identity in the certificate.If specified, the proxy will verify that the server certificate's subject alt name matches one of the specified values. This field is applicable only when mode is SIMPLE or MUTUAL.
  final pulumi.Input<List<String>>? subjectAltNames;

  /// Creates a new [ClientTlsSettings].
  /// [clientTlsContext] Configures the mechanism to obtain client-side security certificates and identity information. This field is only applicable when mode is set to MUTUAL.
  /// [mode] Indicates whether connections to this port should be secured using TLS. The value of this field determines how TLS is enforced. This can be set to one of the following values: DISABLE: Do not setup a TLS connection to the backends. SIMPLE: Originate a TLS connection to the backends. MUTUAL: Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  /// [sni] SNI string to present to the server during TLS handshake. This field is applicable only when mode is SIMPLE or MUTUAL.
  /// [subjectAltNames] A list of alternate names to verify the subject identity in the certificate.If specified, the proxy will verify that the server certificate's subject alt name matches one of the specified values. This field is applicable only when mode is SIMPLE or MUTUAL.
  ClientTlsSettings({
    this.clientTlsContext,
    this.mode,
    this.sni,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTlsContext':
          ?pulumi.Input.mapOptionalInputValue<TlsContext, Map<String, dynamic>>(
            clientTlsContext,
            (value) => value.toMap(),
          ),
      'mode':
          ?pulumi.Input.mapOptionalInputValue<ClientTlsSettingsMode, String>(
            mode,
            (value) => value.wireValue,
          ),
      'sni': ?sni,
      'subjectAltNames': ?subjectAltNames,
    };
  }

  factory ClientTlsSettings.fromMap(Map<String, dynamic> map) {
    return ClientTlsSettings(
      clientTlsContext: (() {
        final guardedValue = map['clientTlsContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TlsContext.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClientTlsSettingsMode.fromValue(guardedValue as String),
        );
      })(),
      sni: (() {
        final guardedValue = map['sni'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subjectAltNames: (() {
        final guardedValue = map['subjectAltNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
